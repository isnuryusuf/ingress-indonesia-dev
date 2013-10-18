.class public final Lcom/nianticproject/ingress/common/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/s/b;
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot re-use a committed committer"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;F)Lcom/nianticproject/ingress/common/s/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot re-use a committed committer"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object p0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/s/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot re-use a committed committer"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object p0

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)Lcom/nianticproject/ingress/common/s/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot re-use a committed committer"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object p0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/s/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot re-use a committed committer"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object p0

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/s/b;->b:Z

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s/b;->a:Ljava/util/HashMap;

    return-object v0
.end method
