.class public final Lcom/nianticproject/ingress/common/ui/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/ui/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nianticproject/ingress/common/ui/b/c;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/b/c;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    .line 95
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->c:Z

    .line 97
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/nianticproject/ingress/common/ui/b/l;
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/b/p;

    invoke-direct {v2, p0, p1}, Lcom/nianticproject/ingress/common/ui/b/p;-><init>(Lcom/nianticproject/ingress/common/ui/b/l;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    return-object p0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILcom/nianticproject/ingress/common/ui/b/b;)Lcom/nianticproject/ingress/common/ui/b/l;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/b/o;

    invoke-direct {v2, p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/b/o;-><init>(Lcom/nianticproject/ingress/common/ui/b/l;ILcom/nianticproject/ingress/common/ui/b/b;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-object p0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/b/l;->c:Z

    if-nez v2, :cond_0

    :goto_0
    const-string/jumbo v2, "Cannot commit a transaction that was already committed"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/ui/b/c;->a(Lcom/nianticproject/ingress/common/ui/b/l;)V

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->c:Z

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/ui/b/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/l;->a:Ljava/util/ArrayList;

    return-object v0
.end method
