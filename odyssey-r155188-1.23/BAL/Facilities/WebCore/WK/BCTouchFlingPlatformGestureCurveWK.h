/*
 * Copyright (C) 2012 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1.  Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 * 2.  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. AND ITS CONTRIBUTORS ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL APPLE INC. OR ITS CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef TouchFlingPlatformGestureCurve_h
#define TouchFlingPlatformGestureCurve_h

#include "FloatPoint.h"
#include "PlatformGestureCurve.h"
#include <wtf/OwnPtr.h>
#include <wtf/PassOwnPtr.h>

namespace WebCore {

class PlatformGestureCurveTarget;

// Implementation of PlatformGestureCurve suitable for touch pad/screen-based
// fling scroll. Starts with a flat velocity profile based on 'velocity', which
// tails off to zero. Time is scaled to that duration of the fling is proportional
// the initial velocity.
class TouchFlingPlatformGestureCurve : public PlatformGestureCurve {
public:
    static PassOwnPtr<PlatformGestureCurve> create(const FloatPoint& velocity);
    virtual ~TouchFlingPlatformGestureCurve();

    virtual bool apply(double time, PlatformGestureCurveTarget*);

private:
    explicit TouchFlingPlatformGestureCurve(const FloatPoint& velocity);

    FloatPoint m_velocity;
    float m_timeScaleFactor;
    IntPoint m_cumulativeScroll;
};

} // namespace WebCore

#endif
