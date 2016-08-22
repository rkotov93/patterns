module Observable
  def observers
    @observers ||= []
  end

  def add_observer(observer, method = :update)
    raise "Observer should implement method #{method}" unless observer.respond_to? method
    @method = method
    observers << observer
  end

  def delete_observer(observer)
    observers.delete(observer)
  end

  def change
    @changed = true
  end

  def changed?
    @changed
  end

  def notify_observers(*args)
    return unless changed?
    observers.each do |observer|
      observer.public_send(@method, *args)
    end
  end
end
