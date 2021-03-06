class NumsController < ApplicationController
  before_action :set_num, only: [:show]
  before_action :set_filer, only: [:index, :show]
  before_action :set_num_keys, only: [:index, :show]
  before_action :set_tag_keys, only: [:index, :show]

  def index
    @nums = @filer.nums
    @numData = {}
    @periods = []
    @nums.each do |num|
      @numData[num.tag] ? @numData[num.tag].push(num) : @numData[num.tag] = [num]
      @periods.push(num.dd)
    end
    @periods.uniq!.sort!
  end

  def show
    
  end

  private
    def set_num
      @num = Num.find(params[:id])
    end

    def set_filer
      @filer = Filer.find(params[:filer_id])
    end

    def num_params
      params.fetch(:num, {})
    end

    def set_num_keys
      @numKeys = Num.new.attributes.keys
    end

    def set_tag_keys
      @tagKeys = Tag.new.attributes.keys
    end
end
