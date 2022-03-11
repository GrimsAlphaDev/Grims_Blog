
@extends('layouts.main')

@section('container')

    <article>
    <h2>{{ $rawdata["id"] }}</h2>    
    <h5>By : {{ $rawdata["nama"] }}</h5>
    <p>{{ $rawdata["umur"] }}</p>
    </article>

    <a href="/">Back</a>

@endsection