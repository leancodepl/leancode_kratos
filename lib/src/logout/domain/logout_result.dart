sealed class LogoutResult {
  const LogoutResult();
}

class LogoutSuccessResult extends LogoutResult {
  const LogoutSuccessResult();
}

class LogoutUnknownErrorResult extends LogoutResult {
  const LogoutUnknownErrorResult();
}
