module ReadParams
  def openFile File
    Open.open(File, "w") { |io|  }

  end
  def getParam key, File
    unless File.exist?
      false
    else
      true
    end
  end
end
