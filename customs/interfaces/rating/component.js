define(['./interface', 'core/UIComponent', 'core/t'], function (Input, UIComponent, __t) {
  return UIComponent.extend({
    id: 'rating',
    dataTypes: ['INT'],
    options: [
      {id: 'max_score', default_value: 5, ui: 'numeric'}
    ],
    Input: Input,
    validate: function (value, options) {
      if (options.schema.isRequired() && !value) {
        return __t('this_field_is_required');
      }
    },
    list: function (options) {
      var html = '';
      for (var i = 0; i < options.value; i++) {
        html += '<i style="color: #999;" class="material-icons">star</i>';
      }
      return html;
    }
  });
});
