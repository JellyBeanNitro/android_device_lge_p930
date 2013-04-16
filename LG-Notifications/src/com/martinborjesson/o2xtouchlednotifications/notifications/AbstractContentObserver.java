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

package com.martinborjesson.o2xtouchlednotifications.notifications;

import android.content.*;
import android.database.*;
import android.net.*;
import android.os.*;

abstract public class AbstractContentObserver extends ContentObserver {
	
	private boolean registered = false;
	protected ContentResolver contentResolver = null;

	public AbstractContentObserver(Handler handler, ContentResolver contentResolver) {
		super(handler);
		this.contentResolver = contentResolver;
	}
	
	abstract public boolean isAvailable(Context context);

	abstract public void register();
	
	public void unregister() {
		if (registered) {
			contentResolver.unregisterContentObserver(this);
			registered = false;
		}
	}
	
	protected void register(Uri uri) {
		if (!registered) {
			contentResolver.registerContentObserver(uri, true, this);
			registered = true;
		}
	}
	
	abstract public void reset();
	
	abstract public void onChange(boolean selfChange);
	
	abstract public boolean hasChanged();
}
