<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use Illuminate\Http\Request;

class DosenController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $dosen = Dosen::all();

        return view('dosen', [
            'title' => 'Dosen',
            'dosen' => $dosen
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create', [
            'title' => 'Create'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'nama' => 'required',
        //     'nip' => 'required|unique:dosen',
        //     'email' => 'required',
        //     'jabatan' => 'required',
        // ]);

        $dosen = new Dosen;
        $dosen->nama = $request->nama;
        $dosen->nip = $request->nip;
        $dosen->jurusan = $request->email;
        $dosen->jabatan = $request->jabatan;
        $dosen->save();
        return redirect()->route('index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        // $dosen = Dosen::find($id_dosen);
        // return view('update', [
        //     'dosen'=> $dosen
        // ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_dosen)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}