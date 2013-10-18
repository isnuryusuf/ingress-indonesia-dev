.class public Lcom/nianticproject/ingress/o/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/model/a/h;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/s/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/o/j;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/o/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->a()Lcom/nianticproject/ingress/common/s/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/o/j;->b:Lcom/nianticproject/ingress/common/s/e;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/model/a/j;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            ")",
            "Lcom/nianticproject/ingress/common/model/a/j",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    iget-object v1, p0, Lcom/nianticproject/ingress/o/j;->b:Lcom/nianticproject/ingress/common/s/e;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/model/a/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nianticproject/ingress/common/s/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/model/a/i;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    .prologue
    .line 82
    invoke-static {}, Lcom/nianticproject/ingress/common/model/a/i;->values()[Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    iget-object v4, p0, Lcom/nianticproject/ingress/o/j;->b:Lcom/nianticproject/ingress/common/s/e;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/model/a/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/nianticproject/ingress/common/s/e;->a(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/model/a/j;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            "Lcom/nianticproject/ingress/common/model/a/j",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/o/j;->a(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/j;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/model/a/j;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/o/j;->b:Lcom/nianticproject/ingress/common/s/e;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/model/a/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/model/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/s/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            "Lcom/nianticproject/ingress/common/model/a/j",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v0, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;

    .line 90
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/nianticproject/ingress/common/model/a/i;->values()[Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 92
    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/model/a/i;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    iget-object v7, p0, Lcom/nianticproject/ingress/o/j;->b:Lcom/nianticproject/ingress/common/s/e;

    invoke-interface {v7, v6}, Lcom/nianticproject/ingress/common/s/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    if-eqz v7, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {v5, v7}, Lcom/nianticproject/ingress/common/model/a/i;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/model/a/j;

    move-result-object v8

    .line 97
    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v5

    sget-object v5, Lcom/nianticproject/ingress/o/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v8, "parseValue failed: key=%s value=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-virtual {v5, v8, v9}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
