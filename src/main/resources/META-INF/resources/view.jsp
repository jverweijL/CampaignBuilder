<%@ include file="/init.jsp" %>
<div>
	This tool allows you to easily add campaign parameters to URLs so you can track Custom Campaigns in Google Analytics.

	<h3>Enter the website URL and campaign information</h3>
	Fill out the required fields (marked with *) in the form below, and once complete the full campaign URL will be generated for you. <i>Note: the generated URL is automatically updated as you make changes.</i>
</div>
<div id="<portlet:namespace />-2">
	<div class="form-group">
		<label for="campaign-source">* Campaign Source</label>
		<select v-model="source" id="campaign-source" class="form-control">
			<option v-for="item in info.data.items" :value="item.name.toLowerCase()" :key="item.name">{{ item.name }}</option>
		</select>
		<label for="campaign-medium">* Campaign Medium</label>
		<select v-model="medium" id="campaign-medium" class="form-control">
			<option v-for="item in list2.data.items" :value="item.name.toLowerCase()" :key="item.name">{{ item.name }}</option>
		</select>
		<label for="campaign-name">* Campaign Name</label>
		<input
				v-model="name"
				class="form-control"
				id="campaign-name"
				placeholder="campaign name"
				type="text"
		/>
		<label for="campaign-term">Campaign Term</label>
		<input
				v-model="term"
				class="form-control"
				id="campaign-term"
				placeholder="paid keyword"
				type="text"
		/>
		<label for="campaign-content">Campaign Term</label>
		<input
				v-model="content"
				class="form-control"
				id="campaign-content"
				placeholder="differentiate ads"
				type="text"
		/>
	</div>


	<div class="alert alert-info" role="alert">
		<strong class="lead">Copy:</strong>{{ currentUrl }}?<span v-if="source">utm_source={{ source }}</span><span v-if="medium">&utm_medium={{ medium }}</span><span v-if="name">&utm_campaign={{ name }}</span><span v-if="term">&utm_term={{ term }}</span><span v-if="content">&utm_content={{ content }}</span>
	</div>
</div>




<p>The following table gives a detailed explanation and example of each of the campaign parameters. To learn more, check out the links in the <a href="#related-resources">related resources</a> section below.</p>

<table class="Table">
	<tbody>
	<tr>
		<td>
			<p><strong>Campaign Source</strong></p>
			<p><code>utm_source</code></p>
		</td>
		<td>
			<p><strong>Required.</strong></p>
			<p>Use <code>utm_source</code> to identify a search engine, newsletter name, or other source.</p>
			<p><em>Example:</em> <code>google</code></p>
		</td>
	</tr>
	<tr>
		<td>
			<p><strong>Campaign Medium</strong></p>
			<p><code>utm_medium</code></p>
		</td>
		<td>
			<p><strong>Required.</strong></p>
			<p>Use <code>utm_medium</code> to identify a medium such as email or cost-per- click.</p>
			<p><em>Example:</em> <code>cpc</code></p>
		</td>
	</tr>
	<tr>
		<td>
			<p><strong>Campaign Name</strong></p>
			<p><code>utm_campaign</code></p>
		</td>
		<td>
			<p><strong>Required.</strong></p>
			<p>Used for keyword analysis. Use <code>utm_campaign</code> to identify a specific product promotion or strategic campaign.</p>
			<p><em>Example:</em> <code>utm_campaign=spring_sale</code></p>
		</td>
	</tr>
	<tr>
		<td>
			<p><strong>Campaign Term</strong></p>
			<p><code>utm_term</code></p>
		</td>
		<td>
			<p>Used for paid search. Use <code>utm_term</code> to note the keywords for this ad.</p>
			<p><em>Example:</em> <code>running+shoes</code></p>
		</td>
	</tr>
	<tr>
		<td>
			<p><strong>Campaign Content</strong></p>
			<p><code>utm_content</code></p>
		</td>
		<td>
			<p>Used for A/B testing and content-targeted ads. Use <code>utm_content</code> to differentiate ads or links that point to the same URL.</p>
			<p><em>Examples:</em> <code>logolink</code> <em>or</em> <code>textlink</code></p>
		</td>
	</tr>
	</tbody>
</table>



<aui:script require="<%= mainRequire %>">
	main.default('<portlet:namespace />');
</aui:script>