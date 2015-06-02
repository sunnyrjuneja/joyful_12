module UsersHelper

  def link_to_add_fields(name, f, association, options)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', { class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")}}.merge(options))
  end

  def create_account_text
    if @price && @price.to_i == 0
      'Create Account'
    else
      'Add Billing Information'
    end
  end
end
