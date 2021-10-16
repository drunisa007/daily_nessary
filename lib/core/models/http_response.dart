class HttpResponse{
  bool isSuccessful=true;
  String errorMessage='';
  int stateCode = 400;
  dynamic mData='';

  HttpResponse(this.errorMessage, this.stateCode, this.mData,this.isSuccessful);
}