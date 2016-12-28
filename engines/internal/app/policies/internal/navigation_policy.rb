require_dependency 'internal/application_policy'

module Internal
  class NavigationPolicy < ApplicationPolicy

    def administrator?
      user.administrator
    end

    def author?
      user.author || user.columnist
    end

    def student?
      user.student
    end

  end
end