@php $editing = isset($category) @endphp

<div class="row">
    <x-inputs.group class="col-sm-12">
        <x-inputs.text
            name="name"
            label="Name"
            value="{{ old('name', ($editing ? $category->name : '')) }}"
            maxlength="255"
            required
        ></x-inputs.text>
    </x-inputs.group>

    <x-inputs.group class="col-sm-12">
        <x-inputs.select name="news_id" label="News" required>
            @php $selected = old('news_id', ($editing ? $category->news_id : '')) @endphp
            <option disabled {{ empty($selected) ? 'selected' : '' }}>Please select the News</option>
            @foreach($allNews as $value => $label)
            <option value="{{ $value }}" {{ $selected == $value ? 'selected' : '' }} >{{ $label }}</option>
            @endforeach
        </x-inputs.select>
    </x-inputs.group>
</div>
