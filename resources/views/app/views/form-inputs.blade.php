@php $editing = isset($view) @endphp

<div class="row">
    <x-inputs.group class="col-sm-12">
        <x-inputs.number
            name="number"
            label="Number"
            value="{{ old('number', ($editing ? $view->number : '')) }}"
            max="255"
            required
        ></x-inputs.number>
    </x-inputs.group>

    <x-inputs.group class="col-sm-12">
        <x-inputs.text
            name="ip"
            label="Ip"
            value="{{ old('ip', ($editing ? $view->ip : '')) }}"
            maxlength="255"
            required
        ></x-inputs.text>
    </x-inputs.group>

    <x-inputs.group class="col-sm-12">
        <x-inputs.select name="news_id" label="News" required>
            @php $selected = old('news_id', ($editing ? $view->news_id : '')) @endphp
            <option disabled {{ empty($selected) ? 'selected' : '' }}>Please select the News</option>
            @foreach($allNews as $value => $label)
            <option value="{{ $value }}" {{ $selected == $value ? 'selected' : '' }} >{{ $label }}</option>
            @endforeach
        </x-inputs.select>
    </x-inputs.group>
</div>
