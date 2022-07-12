class Book
  def title
    '本のタイトル'
  end
end

class Magazine < Book
  def title
    '雑誌のタイトル'
  end
end

class BaseTask
  def puts_message
    puts 'BaseTask のタイトル'
  end
end

class Task < BaseTask
  def puts_message
    super
    puts 'Task のタイトル'
  end
end
