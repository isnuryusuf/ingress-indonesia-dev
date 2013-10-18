.class public final Lcom/google/android/a/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/a/a/a/a/c;


# direct methods
.method public static a(Lcom/google/android/a/a/a/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "configuration can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/google/android/a/a/a/a/e;->b(Lcom/google/android/a/a/a/a/b;)V

    .line 62
    return-void
.end method

.method private static declared-synchronized b(Lcom/google/android/a/a/a/a/b;)V
    .locals 9
    .parameter

    .prologue
    .line 23
    const-class v8, Lcom/google/android/a/a/a/a/e;

    monitor-enter v8

    :try_start_0
    new-instance v0, Lcom/google/android/a/a/a/a/c;

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->i()Lcom/google/android/a/a/a/a/f;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->d()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->e()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->f()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/a/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/a/a/a/a/f;III)V

    .line 32
    sput-object v0, Lcom/google/android/a/a/a/a/e;->a:Lcom/google/android/a/a/a/a/c;

    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/a/c;->a(I)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/a/a/a/a/b;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    sget-object v3, Lcom/google/android/a/a/a/a/e;->a:Lcom/google/android/a/a/a/a/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 36
    :cond_0
    monitor-exit v8

    return-void
.end method
