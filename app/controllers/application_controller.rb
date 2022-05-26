class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found


private

def render_unprocessable_entity invalid
    render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
end

def render_not_found invalid 
    render json: { error: "#{invalid.model} not found"}, status: :not_found
end

end
