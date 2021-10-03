package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_746:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_790)
         {
            _structure = null;
            _assets = null;
            var_248 = null;
            var_286 = null;
            var_676 = null;
            var_561 = null;
            var_336 = null;
            if(!var_1295 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_719 = null;
            var_790 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_746[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_746[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_409:
               switch(_loc3_)
               {
                  case AvatarAction.const_749:
                  case AvatarAction.const_537:
                  case AvatarAction.const_361:
                  case AvatarAction.const_844:
                  case AvatarAction.const_414:
                  case AvatarAction.const_814:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_320:
            case AvatarAction.const_697:
            case AvatarAction.const_230:
            case AvatarAction.const_732:
            case AvatarAction.const_863:
            case AvatarAction.const_928:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
