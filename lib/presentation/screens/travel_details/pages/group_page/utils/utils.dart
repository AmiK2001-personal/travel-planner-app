String roleIdToString(String roleId) {
  if (roleId == "0") {
    return "Создатель";
  } else if (roleId == "1") {
    return "Гид";
  } else if (roleId == "2") {
    return "Участник";
  } else {
    return "Не определен";
  }
}
