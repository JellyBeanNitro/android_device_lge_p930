/**
   Copyright 2011 Martin Börjesson

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
 */

package com.martinborjesson.o2xtouchlednotifications.utils;

import java.io.*;

import android.content.*;

public class ObjectSerializer {
	public static void serialize(Context context, String fileName, Object serializableObject) throws IOException {
		OutputStream out = context.openFileOutput(fileName, Context.MODE_PRIVATE);
		ObjectOutputStream oos = new ObjectOutputStream(out);
		oos.writeObject(serializableObject);
		oos.close();
		out.close();
	}
	
	public static Object unserialize(Context context, String fileName) throws IOException {
		InputStream in = context.openFileInput(fileName);
		ObjectInputStream ois = new ObjectInputStream(in);
		Object o = null;
		try {
			o = ois.readObject();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		ois.close();
		in.close();
		return o;
	}
}
