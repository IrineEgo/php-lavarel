<?php
    namespace App\Http\Controllers;
    use App\Topic;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Auth;
    use Illuminate\Support\Facades\Log;
    class TopicController extends Controller
    {
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */
        public function index()
        {
            $topics = Topic::whereHas('questions', function ($query) {
                $query->where('status', 'public');
            })
                ->with(['questions' => function ($query) {
                    $query->where('status', 'public');
                }])
                ->get();
        }

    }
