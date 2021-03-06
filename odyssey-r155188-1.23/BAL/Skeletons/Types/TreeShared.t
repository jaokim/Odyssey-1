/*
 * Copyright (C) 2008 Pleyo.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1.  Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 * 2.  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 * 3.  Neither the name of Pleyo nor the names of
 *     its contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY PLEYO AND ITS CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL PLEYO OR ITS CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#ifndef TreeShared_h
#define TreeShared_h
/**
 *  @file  TreeShared.t
 *  TreeShared description
 *  Repository informations :
 * - $URL$
 * - $Rev$
 * - $Date: 2012/05/10 10:21:11 $
 */
#include "BALBase.h"

#include <wtf/Assertions.h>
#include <wtf/Noncopyable.h>

namespace WebCore {

template<class T> class TreeShared : public WebCoreBase, Noncopyable {
public:
    /**
     *  TreeShared description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    TreeShared();
    /**
     *  TreeShared description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    TreeShared(T* parent);
    /**
     *  ~TreeShared description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    virtual ~TreeShared();

    /**
     *  ref description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    void ref();

    /**
     *  deref description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    void deref();

    /**
     *  hasOneRef description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    bool hasOneRef() const;

    /**
     *  refCount description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    int refCount() const;

    /**
     *  setParent description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    void setParent(T* parent) ;
    /**
     *  parent description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    T* parent() const ;

#ifndef NDEBUG
    bool m_deletionHasBegun;
    bool m_inRemovedLastRefFunction;
#endif

private:
    /**
     *  removedLastRef description
     * @param[in] : description
     * @param[out] : description
     * @code
     * @endcode
     */
    virtual void removedLastRef();

    int m_refCount;
    T* m_parent;
};

}

#endif // TreeShared.h




