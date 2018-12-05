@extends('layouts.app')

@section('content')
  <div class="admin-home">
  @if ($questions->where('status', 'expected'))
    <h2 class="text-primary">Ожидают ответа</h2>
    <table class="table table-home">
      <tr>
        <th>#</th>
        <th>№</th>
        <th>Aвтор</th>
        <th>Емайл</th>
        <th>Вопрос</th>
        <th>Создано</th>
        <th>Обновлено</th>
        <th>Редактировать</th>
      </tr>
      @foreach ($questions as $question)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ $question->id }}</td>
          <td>{{ $question->author }}</td>
          <td>{{ $question->email }}</td>
          <td>{{ $question->question }}</td>
          <td>{{ $question->created_at }}</td>
          <td>{{ $question->updated_at }}</td>
          <td><a class="btn btn-primary btn-xs" href="{{ route('admin.question.edit', [$question->id]) }}" role="button">&gt;</a></td>
        </tr>
      @endforeach
    </table>
  @endif

  @foreach ($topics as $topic)
    @if ($topic->questions)
      <h2 class="text-primary">
        Тема: <a href="{{ route('topic.show', [$topic->id]) }}">{{ $topic->topic }}</a>
      </h2>  
      <table class="table table-home">
        <tr>
          <th>#</th>
          <th>№</th>
          <th>Aвтор</th>
          <th>Емайл</th>
          <th>Вопрос</th>
          <th>Ответ</th>
          <th>Статус</th>
          <th>Создано</th>
          <th>Обновлено</th>
          <th>Редактировать</th>
        </tr>
        @foreach ($topic->questions as $question)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ $question->id }}</td>
          <td>{{ $question->author }}</td>
          <td>{{ $question->email }}</td>
          <td>{{ $question->question }}</td>
          <td>{{ $question->answer }}</td>
          <td>
            @if ($question->isExpected())
              ожидает ответа
            @elseif ($question->isPublic())
              опубликован
            @else
              скрыт
            @endif
          </td>
          <td>{{ $question->created_at }}</td>
          <td>{{ $question->updated_at }}</td>
          <td><a class="btn btn-primary btn-xs" href="{{ route('admin.question.edit', [$question->id]) }}" role="button">&gt;</a></td>
        </tr>
        @endforeach
      </table>
    @endif
  @endforeach
  </div>
@endsection
