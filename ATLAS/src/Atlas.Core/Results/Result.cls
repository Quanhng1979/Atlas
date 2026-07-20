Option Explicit

'==============================================================================
' Atlas
'
' Class       : Result
' Layer       : Atlas.Core
' Purpose     : Represents the outcome of an operation.
' Author      : Atlas Project
' Version     : 0.1.0-alpha
'==============================================================================

Private mSuccess As Boolean
Private mMessage As String
Private mErrorCode As String
Private mValue As Variant

'==========================
' Properties
'==========================

Public Property Get IsSuccess() As Boolean
    IsSuccess = mSuccess
End Property

Public Property Get IsFailure() As Boolean
    IsFailure = Not mSuccess
End Property

Public Property Get Message() As String
    Message = mMessage
End Property

Public Property Get ErrorCode() As String
    ErrorCode = mErrorCode
End Property

Public Property Get Value() As Variant
    Value = mValue
End Property

'==========================
' Factory
'==========================

Public Sub Success(Optional ByVal value As Variant, _
                   Optional ByVal message As String = "")

    mSuccess = True
    mValue = value
    mMessage = message
    mErrorCode = vbNullString

End Sub

Public Sub Failure(ByVal errorCode As String, _
                   ByVal message As String)

    mSuccess = False
    mErrorCode = errorCode
    mMessage = message

End Sub