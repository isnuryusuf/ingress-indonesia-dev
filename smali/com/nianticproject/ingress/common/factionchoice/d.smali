.class public Lcom/nianticproject/ingress/common/factionchoice/d;
.super Lcom/nianticproject/ingress/common/ui/b/k;
.source "SourceFile"


# static fields
.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/ac;

.field private d:Z

.field private final e:Lcom/nianticproject/ingress/common/u/ah;

.field private final f:Lcom/nianticproject/ingress/common/c/e;

.field private final g:Lcom/nianticproject/ingress/common/c/ak;

.field private h:Lcom/nianticproject/ingress/shared/ai;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/d;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/ak;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string/jumbo v0, "Faction Choice"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/b/k;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->d:Z

    .line 53
    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->h:Lcom/nianticproject/ingress/shared/ai;

    .line 54
    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->i:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->c:Lcom/nianticproject/ingress/common/ac;

    .line 60
    iput-object p3, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->f:Lcom/nianticproject/ingress/common/c/e;

    .line 61
    iput-object p4, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->g:Lcom/nianticproject/ingress/common/c/ak;

    .line 62
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->e:Lcom/nianticproject/ingress/common/u/ah;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/ai;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->h:Lcom/nianticproject/ingress/shared/ai;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/d;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 3
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const v1, 0x3e4ccccd

    new-instance v2, Lcom/nianticproject/ingress/common/factionchoice/k;

    invoke-direct {v2, p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/k;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/t;->a(FLjava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/shared/ai;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->h:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/factionchoice/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(ILcom/nianticproject/ingress/common/ui/b/b;)V

    return-void
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/u/ah;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->e:Lcom/nianticproject/ingress/common/u/ah;

    return-object v0
.end method

.method static synthetic i()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/d;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/k;->a()V

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->g:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->f:Lcom/nianticproject/ingress/common/c/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->b(Z)V

    .line 191
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 192
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/factionchoice/az;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/f;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/f;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/factionchoice/az;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/factionchoice/g;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/common/missions/cs;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/factionchoice/e;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/missions/cs;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Ljava/lang/Runnable;)V

    .line 93
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/common/factionchoice/i;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/common/ui/widget/z;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Ljava/lang/Runnable;)V

    .line 143
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/j;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/j;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/factionchoice/h;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "FactionChoiceActivity"

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->g:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->f:Lcom/nianticproject/ingress/common/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->b(Z)V

    .line 199
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/k;->e()V

    .line 200
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->d:Z

    .line 221
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/factionchoice/d;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const v1, 0x3e4ccccd

    new-instance v2, Lcom/nianticproject/ingress/common/factionchoice/l;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/factionchoice/l;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/t;->a(FLjava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public final k_()Lcom/nianticproject/ingress/common/ui/n;
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->d:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/nianticproject/ingress/common/ui/n;->c:Lcom/nianticproject/ingress/common/ui/n;

    .line 180
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/ui/n;->a:Lcom/nianticproject/ingress/common/ui/n;

    goto :goto_0
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->c:Lcom/nianticproject/ingress/common/ac;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ac;->b()V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public final o_()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->d:Z

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->h:Lcom/nianticproject/ingress/shared/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/d;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/m;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/factionchoice/m;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/factionchoice/m;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 217
    :cond_1
    return-void
.end method
