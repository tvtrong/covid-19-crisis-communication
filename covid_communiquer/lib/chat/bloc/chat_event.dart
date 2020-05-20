part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class ChatStarted extends ChatEvent {
  final String sessionId;

  const ChatStarted({
    @required this.sessionId
  });

  @override
  List<Object> get props => [sessionId];

  @override
  String toString() => 'ChatStarted { session :$sessionId }';

}

class OnMessage extends ChatEvent {
  final String message;
  final String sessionId;

  const OnMessage({
    @required this.message,
    @required this.sessionId}
  );

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'OnMessage { message :$message }';
}
