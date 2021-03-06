module ApplicationHelper
  def edit_and_destroy_buttons(item)
    return if current_user.nil?

    edit = link_to('Edit', url_for([:edit, item]), class: "btn btn-primary")
    del = link_to('Destroy', item, method: :delete, data: { confirm: 'Are you sure?' }, class: "btn btn-danger")
    raw("#{edit} #{del}")
  end

  # keskiarvon pyöristys tapahtuu jo average_rating metodissa. Tämä täällä vain tehtävää varten.
  def round(number)
    number.round(1).to_f
  end
end
