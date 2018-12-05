@extends('layouts.app')

@section('content')
  <div class="admin-content">
  <h2>Список тем</h2>
  <table class="table table-condensed">
    <tr>
      <th>№</th>
      <th>Название темы</th>
      <th>Всего вопросов</th>
      <th>Опубликовано</th>
      <th>Без ответа</th>
      <th>Подробнее</th>
    </tr>
    @foreach ($topics as $topic)
    <tr>
      <td>{{ $loop->iteration }}</td>
      <td>{{ $topic->topic }}</td>
      <td>{{ count($topic->questions) }}</td>
      <td>{{ count($topic->questions->where('status', 'public')) }}</td>
      <td>{{ count($topic->questions->where('status', 'expected')) }}</td>
      <td><a class="btn btn-primary btn-xs" href="{{ route('topic.show', [$topic->id]) }}" role="button">&gt;</a></td>
    </tr>
    @endforeach
  </table>

    <p><a class="col-md-12 btn btn-primary" href="{{ route('topic.create') }}">Добавить тему</a></p>
  </div>
@endsection
