.class final Lcom/nianticproject/ingress/common/playerprofile/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/ay;
.implements Lcom/nianticproject/ingress/common/playerprofile/az;
.implements Lcom/nianticproject/ingress/common/playerprofile/s;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/o;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/ax;

.field private final d:Lcom/nianticproject/ingress/common/model/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/o;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 43
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->a:Ljava/lang/String;

    .line 44
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/o;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    .line 45
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ax;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->c:Lcom/nianticproject/ingress/common/playerprofile/ax;

    .line 46
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 48
    invoke-virtual {p2, p0}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/s;)V

    .line 49
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/o;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->r()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/m;->b()V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->c:Lcom/nianticproject/ingress/common/playerprofile/ax;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/common/playerprofile/ay;)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/t;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/n;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/m;->e()V

    .line 75
    :goto_0
    return-void

    .line 74
    :pswitch_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/m;->a()V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;)V

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->c:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 97
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->d:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 85
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->d()Z

    .line 86
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->e:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 91
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->b:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 102
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->b:Lcom/nianticproject/ingress/common/playerprofile/o;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->a:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/m;->c:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Lcom/nianticproject/ingress/common/playerprofile/az;)V

    .line 107
    return-void
.end method
