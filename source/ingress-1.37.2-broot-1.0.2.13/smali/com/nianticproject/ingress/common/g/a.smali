.class public final Lcom/nianticproject/ingress/common/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "<a href=\"http://m.google.com/legalnotices\">Map Data Legal Notices</a>"

    aput-object v2, v1, v0

    const-string/jumbo v2, "<h3>Portal Information</h3>2006-2012 Copyright, <a href=\"http://www.hmdb.org\">HMdb.org</a>"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string/jumbo v3, "<h3>Jackson JSON processor</h3><p>This copy of Jackson JSON processor is licensed under the Apache (Software) License, version 2.0 (\"the License\"). See the License for details about distribution rights, and the specific rights regarding derivate works.</p><p>You may obtain a copy of the License at: http://www.apache.org/licenses/</p>"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "<h3>Apache HTTPClient and HTTPMime</h3><p>Apache HttpComponents HttpMime</p><p>Apache HttpComponents HttpClient</p><p>Copyright 1999-2011 The Apache Software Foundation</p><p>This product includes software developed byThe Apache Software Foundation (http://www.apache.org/).</p><p>This project contains annotations derived from JCIP-ANNOTATIONS</p><p>Copyright (c) 2005 Brian Goetz and Tim Peierls. See http://www.jcip.net</p>"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "<h3>Apache Commons Codec</h3><p>Apache Commons Codec</p><p>Copyright 2002-2009 The Apache Software Foundation</p><p>This product includes software developed by The Apache Software Foundation (http://www.apache.org/).</p><p>---------------------------------------------</p><p>src/test/org/apache/commons/codec/language/DoubleMetaphoneTest.java contains test data from http://aspell.sourceforge.net/test/batch0.tab.</p><p>Copyright (C) 2002 Kevin Atkinson (kevina@gnu.org). Verbatim copying and distribution of this entire article is permitted in any medium, provided this notice is preserved.<p><p>---------------------------------------------</p>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "<h3>Apache Commons Logging</h3><p>Commons Logging</p><p>Copyright 2001-2007 The Apache Software Foundation</p><p>This product includes/uses software(s) developed by \'an unknown organization\'</p><p>- Unnamed - avalon-framework:avalon-framework:jar:4.1.3</p><p>- Unnamed - log4j:log4j:jar:1.2.12</p><p>- Unnamed - logkit:logkit:jar:1.0.1</p>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "<h3>libgdx</h3><p>LibGDX is licensed under the Apache license version 2, which can be found here: http://www.apache.org/licenses/</p>"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "<h3>fastutil</h3><p>fastutil is licensed under the Apache license version 2, which can be found here: http://www.apache.org/licenses/</p>"

    aput-object v3, v1, v2

    sput-object v1, Lcom/nianticproject/ingress/common/g/a;->a:[Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/nianticproject/ingress/common/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/nianticproject/ingress/common/g/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    sget-object v1, Lcom/nianticproject/ingress/common/g/a;->a:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 78
    sget-object v4, Lcom/nianticproject/ingress/common/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    sget-object v5, Lcom/nianticproject/ingress/common/g/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public static a()Lcom/google/a/c/dc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/nianticproject/ingress/common/g/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
