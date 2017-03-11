module FlashesHelper
  FLASSES_CLASS = { notice: "success", alert: "danger", warning: "warning"}.freeze
  def flashes_class(key)
    FLASSES_CLASS.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice "notice", "alert", "warning"
  end
end
