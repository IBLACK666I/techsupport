class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # Ustaw domyślnego użytkownika, jeśli nikt nie jest zalogowany

    if user.employee.present? && user.employee.department_id == 1
      can :department_id_1, Employee
    else
      cannot :department_id_1, Employee
    end
  end
end