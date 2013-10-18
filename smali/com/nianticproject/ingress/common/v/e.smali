.class public abstract Lcom/nianticproject/ingress/common/v/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/v/ah;


# instance fields
.field protected a:Lcom/nianticproject/ingress/common/model/k;

.field protected b:Lcom/nianticproject/ingress/common/r;

.field protected c:Lcom/nianticproject/ingress/common/u/q;

.field protected d:Lcom/nianticproject/ingress/common/v/ai;

.field private e:Lcom/nianticproject/ingress/common/ui/t;

.field private f:Lcom/nianticproject/ingress/common/g/e;

.field private g:Lcom/nianticproject/ingress/common/model/d;

.field private h:Lcom/nianticproject/ingress/common/playerprofile/ax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p2}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->e(Z)V

    .line 265
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->f(Z)V

    .line 267
    new-instance v0, Lcom/nianticproject/ingress/common/h/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/e;->c:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct {v0, v1, p2}, Lcom/nianticproject/ingress/common/h/ai;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    new-instance v1, Lcom/nianticproject/ingress/common/v/g;

    const-string/jumbo v2, "SetNotificationSettingsTask"

    invoke-direct {v1, p0, v2, p1}, Lcom/nianticproject/ingress/common/v/g;-><init>(Lcom/nianticproject/ingress/common/v/e;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/ai;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 282
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/c/g;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/nianticproject/ingress/common/v/i;->a:[I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/nianticproject/ingress/common/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown volume level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/h;->b:Lcom/nianticproject/ingress/common/c/h;

    .line 164
    :goto_0
    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V

    .line 165
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-interface {v1, p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V

    .line 167
    return-void

    .line 152
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/c/h;->c:Lcom/nianticproject/ingress/common/c/h;

    goto :goto_0

    .line 155
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/c/h;->d:Lcom/nianticproject/ingress/common/c/h;

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v0, Lcom/nianticproject/ingress/common/c/h;->a:Lcom/nianticproject/ingress/common/c/h;

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Lcom/nianticproject/ingress/common/v/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/common/v/f;-><init>(Lcom/nianticproject/ingress/common/v/e;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/f;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 189
    return-void
.end method

.method protected final a(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/playerprofile/ax;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/e;->e:Lcom/nianticproject/ingress/common/ui/t;

    .line 74
    iput-object p2, p0, Lcom/nianticproject/ingress/common/v/e;->f:Lcom/nianticproject/ingress/common/g/e;

    .line 75
    iput-object p3, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 76
    iput-object p4, p0, Lcom/nianticproject/ingress/common/v/e;->b:Lcom/nianticproject/ingress/common/r;

    .line 77
    iput-object p5, p0, Lcom/nianticproject/ingress/common/v/e;->c:Lcom/nianticproject/ingress/common/u/q;

    .line 78
    iput-object p6, p0, Lcom/nianticproject/ingress/common/v/e;->g:Lcom/nianticproject/ingress/common/model/d;

    .line 79
    iput-object p7, p0, Lcom/nianticproject/ingress/common/v/e;->h:Lcom/nianticproject/ingress/common/playerprofile/ax;

    .line 80
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/v/ai;)V
    .locals 5
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    .line 85
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->b(Z)V

    .line 86
    invoke-static {}, Lcom/nianticproject/ingress/common/c/g;->values()[Lcom/nianticproject/ingress/common/c/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 87
    invoke-static {v3}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/nianticproject/ingress/common/c/h;

    move-result-object v4

    .line 88
    invoke-interface {p1, v3, v4}, Lcom/nianticproject/ingress/common/v/ai;->a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->s()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->c(Z)V

    .line 92
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->t()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->d(Z)V

    .line 93
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->u()Lcom/nianticproject/ingress/common/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->k(Z)V

    .line 94
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->p()Lcom/nianticproject/ingress/common/ui/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/o;->c()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->l(Z)V

    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/common/v/ai;->e(Z)V

    .line 99
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/common/v/ai;->f(Z)V

    .line 100
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->c()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/common/v/ai;->g(Z)V

    .line 101
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->d()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/common/v/ai;->h(Z)V

    .line 102
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->i(Z)V

    .line 104
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->v()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->j(Z)V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->o()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->a()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->m(Z)V

    .line 108
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 112
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    sget-boolean v1, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->b(Z)V

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->b:Lcom/nianticproject/ingress/common/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "Device"

    const-string/jumbo v1, "clearAndRefreshData"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->f:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->c()V

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->g:Lcom/nianticproject/ingress/common/model/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/d;->f()V

    .line 125
    invoke-static {}, Lcom/nianticproject/ingress/common/u/am;->a()Lcom/nianticproject/ingress/common/u/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/am;->b()V

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->b:Lcom/nianticproject/ingress/common/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 127
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ak;->j()V

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->h:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a()V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->e:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 131
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->e:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/e/a;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 136
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/et;->a()Lcom/nianticproject/ingress/common/missions/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bp;->d()V

    .line 142
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->s()Z

    move-result v3

    .line 195
    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->b(Z)V

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->c(Z)V

    .line 197
    return-void

    :cond_0
    move v0, v2

    .line 195
    goto :goto_0

    :cond_1
    move v1, v2

    .line 196
    goto :goto_1
.end method

.method public final i()V
    .locals 7

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v6

    .line 202
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v2

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->c()Z

    move-result v3

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->d()Z

    move-result v4

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->e()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    .line 208
    invoke-direct {p0, v6, v0}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 209
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 7

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v6

    .line 214
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v2

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->c()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->d()Z

    move-result v4

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->e()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    .line 220
    invoke-direct {p0, v6, v0}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 221
    return-void

    .line 214
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 7

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v6

    .line 226
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v2

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->c()Z

    move-result v3

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->d()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->e()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    .line 232
    invoke-direct {p0, v6, v0}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 233
    return-void

    .line 226
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 7

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v6

    .line 238
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v2

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->c()Z

    move-result v3

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->d()Z

    move-result v4

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->e()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    .line 244
    invoke-direct {p0, v6, v0}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 245
    return-void

    .line 238
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 7

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v6

    .line 250
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->a()Z

    move-result v1

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->c()Z

    move-result v3

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->d()Z

    move-result v4

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->e()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    .line 256
    invoke-direct {p0, v6, v0}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 257
    return-void

    .line 250
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->o()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    move-result-object v1

    .line 287
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;-><init>(Z)V

    .line 290
    new-instance v0, Lcom/nianticproject/ingress/common/v/h;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/v/h;-><init>(Lcom/nianticproject/ingress/common/v/e;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 306
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/e;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 307
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->a()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/nianticproject/ingress/common/v/ai;->m(Z)V

    .line 308
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/e;->h:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-interface {v1, v2, v0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;Lcom/nianticproject/ingress/common/playerprofile/bb;)V

    .line 309
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 314
    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->e(Z)V

    .line 315
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/v/ai;->j(Z)V

    .line 316
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/et;->a()Lcom/nianticproject/ingress/common/missions/bp;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bp;->e()V

    .line 322
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->u()Lcom/nianticproject/ingress/common/ui/e;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/e;->a(Z)V

    .line 328
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/e;->e()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->k(Z)V

    .line 329
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->p()Lcom/nianticproject/ingress/common/ui/o;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/o;->b(Z)V

    .line 335
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/o;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->l(Z)V

    .line 336
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/e;->e:Lcom/nianticproject/ingress/common/ui/t;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 341
    return-void
.end method
