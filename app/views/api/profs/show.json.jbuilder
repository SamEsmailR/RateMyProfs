json.profs do
    json.set! @prof.id do
        json.extract! @prof, :id, :first_name, :last_name, :subject, :school_id
    end
end