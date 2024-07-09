<?php

namespace App\Http\Controllers;

use App\Models\StudentModel;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        $students = StudentModel::all();

        if ($request->wantsJson()) {
            return response()->json($students);
        }

        return view('students.index', compact('students'));
    }

    public function show($id)
    {
        $student = StudentModel::find($id);

        if (!$student) {
            return response()->json(['message' => 'Student not found'], 404);
        }

        return response()->json($student, 200);
    }



    public function create()
    {
        return view('students.form');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'age' => 'required|int',
            'hobby' => 'required|string|max:100',
            'address' => 'required|string|max:255',
            'phone_num' => 'required|string|max:20',
            'faculty' => 'required|string|max:50',

        ]);

        StudentModel::create($request->all());

        return redirect()->route('students.index')->with('success', 'Student added successfully');
    }

    public function edit($id)
    {
        $student = StudentModel::find($id);

        if ($student) {
            return view('students.form', compact('student'));
        }

        return redirect()->route('students.index')->with('error', 'Student not found');
    }

    public function update(Request $request, $id)
    {
        $student = StudentModel::find($id);

        if ($student) {
            $request->validate([
                'name' => 'required|string|max:255',
                'age' => 'required|int',
                'hobby' => 'required|string|max:100',
                'address' => 'required|string|max:255',
                'phone_num' => 'required|string|max:20',
                'faculty' => 'required|string|max:50',
            ]);

            $student->update($request->all());

            return redirect()->route('students.index')->with('success', 'Student updated successfully');
        }

        return redirect()->route('students.index')->with('error', 'Student not found');
    }

    public function destroy($id)
    {
        $student = StudentModel::find($id);

        if ($student) {
            $student->delete();
            return redirect()->route('students.index')->with('success', 'Student deleted successfully');
        }

        return redirect()->route('students.index')->with('error', 'Student not found');
    }
}