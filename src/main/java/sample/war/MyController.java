/*
 * Copyright 2012-2016 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package sample.war;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {
	Log logger = LogFactory.getLog(MyController.class);

	private String version = "10";

	@RequestMapping(value={"", "/", "welcome"}, method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		model.put("version",version);
		model.put("timeMessage", "測試訊息" + new SimpleDateFormat("HH:mm:ss").format(new Date()));
		return "welcome";
	}

	@RequestMapping(value="/result", method = RequestMethod.POST)
	public String result(ModelMap model,  @RequestParam String message) {
		model.put("message", message);
		return "result";
	}

	@RequestMapping(value="/hello/{name}", method = RequestMethod.GET)
	public String hello(ModelMap model, @PathVariable String name) {
		model.put("message", "hello " + name);
                return "result";
	}
}
