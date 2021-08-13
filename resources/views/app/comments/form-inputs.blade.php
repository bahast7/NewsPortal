@php $editing = isset($comment) @endphp

<div class="row">
    <x-inputs.group class="col-sm-12">
        <x-inputs.textarea
            name="content"
            label="Content"
            maxlength="255"
            required
            >{{ old('content', ($editing ? $comment->content : ''))
            }}</x-inputs.textarea
        >
    </x-inputs.group>

    <x-inputs.group class="col-sm-12">
        <x-inputs.select name="news_id" label="News" required>
            @php $selected = old('news_id', ($editing ? $comment->news_id : '')) @endphp
            <option disabled {{ empty($selected) ? 'selected' : '' }}>Please select the News</option>
            @foreach($allNews as $value => $label)
            <option value="{{ $value }}" {{ $selected == $value ? 'selected' : '' }} >{{ $label }}</option>
            @endforeach
        </x-inputs.select>
    </x-inputs.group>
</div>
