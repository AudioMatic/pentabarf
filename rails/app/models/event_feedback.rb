class Event_feedback < Momomoto::Table

  def self.log_content_columns
    columns.keys - [:eval_time,:event_id,:event_feedback_id]
  end

  def self.log_change_url( change )
    {:controller=>'pentabarf',:action=>:event,:id=>change.event_id}
  end

  def self.log_change_title( change )
    Event.log_change_title( Event.select_single({:event_id=>change.event_id}))
   rescue
    ""
  end

end

