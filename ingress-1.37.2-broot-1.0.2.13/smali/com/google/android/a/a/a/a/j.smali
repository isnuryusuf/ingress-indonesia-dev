.class public final Lcom/google/android/a/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/a/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 292
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 294
    if-eqz p0, :cond_0

    .line 295
    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 302
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v1, "it"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 306
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v1, "irt"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_2
    return-object v0
.end method

.method public static varargs a([Lcom/google/android/a/a/a/a/j;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/a/a/a/a/j;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 231
    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v0

    move v2, v0

    move-object v3, v1

    .line 238
    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_b

    .line 239
    aget-object v0, p0, v4

    invoke-direct {v0}, Lcom/google/android/a/a/a/a/j;->b()Ljava/util/Map;

    move-result-object v7

    .line 240
    if-nez v7, :cond_0

    .line 241
    new-instance v0, Lcom/google/android/a/a/a/a/a;

    const-string/jumbo v1, "The report items get from ticker is null."

    invoke-direct {v0, v1}, Lcom/google/android/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    if-nez v4, :cond_2

    .line 244
    const-string/jumbo v0, "action"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 245
    aget-object v0, p0, v4

    iget-object v0, v0, Lcom/google/android/a/a/a/a/j;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 246
    const-string/jumbo v0, "irt"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const/4 v2, 0x1

    .line 248
    const-string/jumbo v0, "irt"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    const-string/jumbo v0, "it"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 238
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    .line 254
    :cond_2
    aget-object v0, p0, v4

    iget-object v0, v0, Lcom/google/android/a/a/a/a/j;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 255
    const-string/jumbo v0, "action"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v0, "action"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "action"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 257
    :cond_4
    new-instance v0, Lcom/google/android/a/a/a/a/a;

    const-string/jumbo v1, "Can not get merged report items for the tickers with different action names."

    invoke-direct {v0, v1}, Lcom/google/android/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_5
    if-nez v8, :cond_6

    if-nez v1, :cond_7

    :cond_6
    if-eqz v8, :cond_8

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 262
    :cond_7
    new-instance v0, Lcom/google/android/a/a/a/a/a;

    const-string/jumbo v1, "Can not get merged report items for the tickers with different customized parameter-value pairs."

    invoke-direct {v0, v1}, Lcom/google/android/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_8
    const-string/jumbo v0, "irt"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_9

    .line 266
    new-instance v0, Lcom/google/android/a/a/a/a/a;

    const-string/jumbo v1, "Can not get merged report items for the tickers with different latency variables."

    invoke-direct {v0, v1}, Lcom/google/android/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_9
    const-string/jumbo v0, "it"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    if-eqz v2, :cond_a

    .line 271
    const-string/jumbo v0, "irt"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_1

    .line 275
    :cond_b
    invoke-static {v3, v1, v5, v6}, Lcom/google/android/a/a/a/a/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x2c

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/google/android/a/a/a/a/j;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/a/a/a/i;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/i;->c()Lcom/google/android/a/a/a/a/i;

    move-result-object v1

    .line 200
    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/i;->a()Ljava/lang/Long;

    move-result-object v8

    .line 201
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/i;->d()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/i;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 204
    invoke-virtual {v0}, Lcom/google/android/a/a/a/a/i;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 211
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-boolean v2, p0, Lcom/google/android/a/a/a/a/j;->e:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_0

    .line 206
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/a/a/a/a/i;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 207
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/google/android/a/a/a/a/j;->a:J

    sub-long/2addr v0, v8

    goto :goto_1

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/google/android/a/a/a/a/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/a/a/a/j;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/a/a/a/a/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/a/a/a/a/j;->b:Ljava/lang/String;

    return-object v0
.end method
