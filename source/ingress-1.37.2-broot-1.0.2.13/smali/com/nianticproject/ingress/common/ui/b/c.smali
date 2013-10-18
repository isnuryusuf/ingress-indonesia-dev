.class public final Lcom/nianticproject/ingress/common/ui/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/b/j;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/b/f;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/common/ui/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nianticproject/ingress/common/ui/b/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->b:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/b/f;-><init>(Lcom/nianticproject/ingress/common/ui/b/j;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->a:Lcom/nianticproject/ingress/common/ui/b/f;

    .line 31
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->a:Lcom/nianticproject/ingress/common/ui/b/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 136
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/ui/b/l;)V
    .locals 6
    .parameter

    .prologue
    .line 114
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/c;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ui/b/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/m;

    .line 116
    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/d;->b:[I

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/b/m;->b:Lcom/nianticproject/ingress/common/ui/b/n;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/ui/b/n;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iget v3, v0, Lcom/nianticproject/ingress/common/ui/b/m;->a:I

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/b/m;->c:Lcom/nianticproject/ingress/common/ui/b/b;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/b;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/d;->a:[I

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/ui/b/e;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    :cond_1
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->a:[I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/b/e;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->b:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V

    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->c:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :pswitch_2
    :try_start_1
    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/a;->d:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V

    :pswitch_3
    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/a;->e:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->b:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V

    goto :goto_0

    .line 121
    :pswitch_5
    iget v0, v0, Lcom/nianticproject/ingress/common/ui/b/m;->a:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/c;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/b;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/d;->a:[I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/ui/b/e;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_6
    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/a;->d:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V

    :pswitch_7
    sget-object v3, Lcom/nianticproject/ingress/common/ui/b/a;->e:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V

    goto/16 :goto_0

    .line 125
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 118
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 121
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method final a(Lcom/nianticproject/ingress/common/w/f;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->a:Lcom/nianticproject/ingress/common/ui/b/f;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/b/f;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 38
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/c;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/b;

    .line 40
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/b/b;->a(Lcom/nianticproject/ingress/common/w/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->b:Lcom/nianticproject/ingress/common/ui/b/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 141
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->b:Lcom/nianticproject/ingress/common/ui/b/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 131
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->a:Lcom/nianticproject/ingress/common/ui/b/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/c;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 146
    return-void
.end method
