<?php

namespace App\Http\Controllers;

use App\Models\UploadedFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class FileController extends Controller
{
    public function indexFile(Request $request)
    {
        $files = UploadedFile::all();

        if ($request->expectsJson()) {
            return response()->json($files);
        }

        return view('file.indexFile', compact('files'));
    }

    public function uploadFile(Request $request)
    {
        $request->validate([
            'file' => 'required|file|max:10240',
        ]);

        if ($request->file('file')->isValid()) {
            $path = $request->file('file')->store('uploads', 'public');
            $originalName = $request->file('file')->getClientOriginalName();

            $uploadedFile = new UploadedFile();
            $uploadedFile->file_path = $path;
            $uploadedFile->original_name = $originalName;
            $uploadedFile->save();

            if ($request->expectsJson()) {
                return response()->json([
                    'success' => true,
                    'message' => 'File uploaded successfully.',
                    'data' => [
                        'file_path' => $path,
                        'original_name' => $originalName,
                    ],
                ], 201);
            }

            return redirect()->route('files.index')->with('success', 'File uploaded successfully.');
        }

        if ($request->expectsJson()) {
            return response()->json([
                'success' => false,
                'message' => 'File upload failed.',
            ], 500);
        }

        return redirect()->route('file.formFile')->with('error', 'File upload failed.');
    }

    public function formFile()
    {
        return view('file.formFile');
    }

    public function deleteFile(Request $request, $id)
    {
        $file = UploadedFile::findOrFail($id);
        Storage::disk('public')->delete($file->file_path);
        $file->delete();

        if ($request->expectsJson()) {
            return response()->json(['message' => 'File deleted successfully.']);
        }

        return redirect()->route('files.index')->with('success', 'File deleted successfully.');
    }
}