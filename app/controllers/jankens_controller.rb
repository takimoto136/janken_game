# coding: utf-8
class JankensController < ApplicationController
  def index
   $result=""
   img_data=['r_rock.png','r_shears.png','r_paper.png']
   if params[:janken]==nil then
      @jankens=Janken.new
      $win =0
      $loss=0
      $draw=0
    else
      @jankens=Janken.new(params[:janken])
      pc_kind=rand(3).to_i+1
      puts params[:janken][:kid]

      case  params[:janken][:kid].to_i
      when 1
        $img_u="rock.png"
      when 2
        $img_u="shears.png"
      else
        $img_u="paper.png"
      end
      $img=img_data[pc_kind-1] 

      if params[:janken][:kid].to_i==pc_kind then
      	$draw=$draw+1
        $result="分け"
      else
        case pc_kind
        when 1
          if params[:janken][:kid].to_i==2 then
            $loss=$loss+1
            $result="負け"
          else
            $win=$win+1
            $result="勝ち"
          end
        when 2
          if params[:janken][:kid].to_i==3 then
            $loss=$loss+1
            $result="負け"
          else
            $win=$win+1
            $result="勝ち"
          end
        else
          if params[:janken][:kid].to_i==1 then
            $loss=$loss+1
            $result="負け"
          else
            $win=$win+1
            $result="勝ち"
          end
        end
      end
    end
  end
end
