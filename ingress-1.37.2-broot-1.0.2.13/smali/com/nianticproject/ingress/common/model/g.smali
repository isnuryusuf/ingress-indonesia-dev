.class public Lcom/nianticproject/ingress/common/model/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/model/m;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/model/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nianticproject/ingress/common/model/k;

.field private d:Z

.field private e:Lcom/nianticproject/ingress/common/model/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/model/g;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/g;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->b:Ljava/util/Set;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/model/g;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(F)V

    .line 241
    return-void
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/model/k;->a(J)V

    .line 119
    return-void
.end method

.method public final a(JLcom/nianticproject/ingress/common/model/z;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->e:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/model/m;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 273
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/ad;)V

    .line 236
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/k;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 65
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 66
    instance-of v0, p1, Lcom/nianticproject/ingress/common/model/m;

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/g;->d:Z

    .line 67
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/g;->d:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nianticproject/ingress/common/model/m;

    :goto_0
    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->e:Lcom/nianticproject/ingress/common/model/m;

    .line 70
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/common/model/h;

    invoke-direct {v2, p0, p1, v1}, Lcom/nianticproject/ingress/common/model/h;-><init>(Lcom/nianticproject/ingress/common/model/g;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/k;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 92
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/l;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 303
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;)V
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->e:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/m;->a(Lcom/nianticproject/ingress/shared/ai;)V

    .line 268
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 251
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 261
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/e;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/e;)V

    .line 139
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->e:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/m;->a(Ljava/util/Set;)V

    .line 283
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Z)V

    .line 298
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/g;->d:Z

    return v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/f;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->b()Lcom/nianticproject/ingress/shared/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/model/k;->b(J)V

    .line 124
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/model/l;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 226
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/model/k;->c(J)V

    .line 129
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    return v0
.end method

.method public final g()Lcom/nianticproject/ingress/common/ad;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->i()Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->m()I

    move-result v0

    return v0
.end method

.method public final n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->o()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->p()V

    .line 288
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->q()V

    .line 293
    return-void
.end method

.method public final r()Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/g;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->r()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    return-object v0
.end method
