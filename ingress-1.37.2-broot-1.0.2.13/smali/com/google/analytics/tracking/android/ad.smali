.class final Lcom/google/analytics/tracking/android/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:J

.field final synthetic c:Lcom/google/analytics/tracking/android/ac;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ac;Ljava/util/Map;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/analytics/tracking/android/ad;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ac;->a(Lcom/google/analytics/tracking/android/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->b(Lcom/google/analytics/tracking/android/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->c(Lcom/google/analytics/tracking/android/ac;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ac;->c(Lcom/google/analytics/tracking/android/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->d(Lcom/google/analytics/tracking/android/ac;)Ljava/lang/String;

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ac;->a(Lcom/google/analytics/tracking/android/ac;Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->c(Ljava/util/Map;)V

    .line 131
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ac;->b(Lcom/google/analytics/tracking/android/ac;Ljava/util/Map;)V

    .line 132
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->e(Lcom/google/analytics/tracking/android/ac;)Lcom/google/analytics/tracking/android/ar;

    move-result-object v3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/as;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/as;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/analytics/tracking/android/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/at;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ac;->g(Lcom/google/analytics/tracking/android/ac;)Lcom/google/analytics/tracking/android/bc;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/ad;->b:J

    iget-object v4, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/ad;->a:Ljava/util/Map;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/ac;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/analytics/tracking/android/ad;->c:Lcom/google/analytics/tracking/android/ac;

    invoke-static {v5}, Lcom/google/analytics/tracking/android/ac;->f(Lcom/google/analytics/tracking/android/ac;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/bc;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method
