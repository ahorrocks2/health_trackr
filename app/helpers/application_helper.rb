module ApplicationHelper
  def food_sortable(column, title)
    direction = column == sort_food_column && sort_food_direction == 'asc' ? 'desc' : 'asc'
    link_to title, :sort => column, :direction => direction
  end

  def workout_sortable(column, title)
    direction = column == sort_workout_column && sort_workout_direction == 'asc' ? 'desc' : 'asc'
    link_to title, :sort_by => column, :direction_by => direction
  end
end
