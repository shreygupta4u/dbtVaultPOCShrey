{{ config(
    post_hook=[
      "{{SQLVariable_PreHook}}"
    ]
) }}

Select $model_id as ModelName