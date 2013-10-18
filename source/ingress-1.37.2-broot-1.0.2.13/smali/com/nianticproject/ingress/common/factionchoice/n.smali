.class public Lcom/nianticproject/ingress/common/factionchoice/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:Lcom/nianticproject/ingress/common/w/d;

.field private static final o:Lcom/nianticproject/ingress/common/w/d;

.field private static final p:Lcom/nianticproject/ingress/common/w/d;

.field private static final q:Lcom/nianticproject/ingress/common/w/d;

.field private static final r:Lcom/nianticproject/ingress/common/w/d;

.field private static final s:Lcom/nianticproject/ingress/common/w/d;


# instance fields
.field private final A:Lcom/nianticproject/ingress/common/factionchoice/az;

.field private final B:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final a:Lcom/nianticproject/ingress/common/w/aa;

.field private final b:Lcom/nianticproject/ingress/common/w/h;

.field private final c:Lcom/nianticproject/ingress/common/w/h;

.field private final d:Lcom/nianticproject/ingress/common/w/h;

.field private final e:Lcom/nianticproject/ingress/common/w/h;

.field private final f:Lcom/nianticproject/ingress/common/w/h;

.field private final g:Lcom/nianticproject/ingress/common/w/h;

.field private final h:Lcom/nianticproject/ingress/common/w/h;

.field private final i:Lcom/nianticproject/ingress/common/w/h;

.field private final j:Lcom/nianticproject/ingress/common/w/h;

.field private final k:Lcom/nianticproject/ingress/common/w/h;

.field private final l:Lcom/nianticproject/ingress/common/w/h;

.field private final m:Lcom/nianticproject/ingress/common/w/h;

.field private final t:Lcom/nianticproject/ingress/common/factionchoice/d;

.field private final u:Lcom/nianticproject/ingress/common/c/e;

.field private final v:Lcom/nianticproject/ingress/common/u/q;

.field private w:Z

.field private x:Lcom/nianticproject/ingress/common/w/b;

.field private y:Lcom/nianticproject/ingress/common/factionchoice/ai;

.field private final z:Lcom/nianticproject/ingress/common/factionchoice/az;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "Proceed"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->n:Lcom/nianticproject/ingress/common/w/d;

    .line 235
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "CHOICE_MADE_HUMANIST"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->o:Lcom/nianticproject/ingress/common/w/d;

    .line 237
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "CHOICE_MADE_ENLIGHTENED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->p:Lcom/nianticproject/ingress/common/w/d;

    .line 239
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "JARVIS_IN_DA_HOUSE"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->q:Lcom/nianticproject/ingress/common/w/d;

    .line 241
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "RPC_SUCCESS"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->r:Lcom/nianticproject/ingress/common/w/d;

    .line 243
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "RPC_FAILURE"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->s:Lcom/nianticproject/ingress/common/w/d;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/u/q;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/o;

    const-string/jumbo v1, "ADA_PITCH"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/o;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->b:Lcom/nianticproject/ingress/common/w/h;

    .line 64
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/z;

    const-string/jumbo v1, "AUTH_OP_CODE"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/z;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->c:Lcom/nianticproject/ingress/common/w/h;

    .line 72
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/aa;

    const-string/jumbo v1, "JARVIS_PITCH"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/aa;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->d:Lcom/nianticproject/ingress/common/w/h;

    .line 89
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ac;

    const-string/jumbo v1, "MAKE_CHOICE"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/ac;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->e:Lcom/nianticproject/ingress/common/w/h;

    .line 101
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ad;

    const-string/jumbo v1, "MAKE_CHOICE_FAST_PATH"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/ad;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->f:Lcom/nianticproject/ingress/common/w/h;

    .line 113
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ae;

    const-string/jumbo v1, "CONFIRM_HUMANIST"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/ae;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->g:Lcom/nianticproject/ingress/common/w/h;

    .line 122
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/af;

    const-string/jumbo v1, "CHOICE_MADE_HUMANIST"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/af;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->h:Lcom/nianticproject/ingress/common/w/h;

    .line 130
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ag;

    const-string/jumbo v1, "CONFIRM_ENLIGHTENED"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/ag;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->i:Lcom/nianticproject/ingress/common/w/h;

    .line 139
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ah;

    const-string/jumbo v1, "CHOICE_MADE_ENLIGHTENED"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/ah;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->j:Lcom/nianticproject/ingress/common/w/h;

    .line 147
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/q;

    const-string/jumbo v1, "CHOICE_MADE"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/q;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->k:Lcom/nianticproject/ingress/common/w/h;

    .line 199
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/t;

    const-string/jumbo v1, "PROGRESS_HUMANIST"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/t;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->l:Lcom/nianticproject/ingress/common/w/h;

    .line 217
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/u;

    const-string/jumbo v1, "PROGRESS_ENLIGHTENED"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/u;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->m:Lcom/nianticproject/ingress/common/w/h;

    .line 254
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/v;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/factionchoice/v;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->z:Lcom/nianticproject/ingress/common/factionchoice/az;

    .line 271
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/w;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/factionchoice/w;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->A:Lcom/nianticproject/ingress/common/factionchoice/az;

    .line 290
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/x;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/factionchoice/x;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->B:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 308
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->t:Lcom/nianticproject/ingress/common/factionchoice/d;

    .line 309
    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->u:Lcom/nianticproject/ingress/common/c/e;

    .line 310
    iput-object p3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->v:Lcom/nianticproject/ingress/common/u/q;

    .line 311
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/c/e;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->u:Lcom/nianticproject/ingress/common/c/e;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/n;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/common/f/m;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/r;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/r;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;Lcom/nianticproject/ingress/shared/ai;)V

    return-object v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->s:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/n;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->B:Lcom/nianticproject/ingress/common/ui/widget/z;

    return-object v0
.end method

.method static synthetic b()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->r:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/d;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->t:Lcom/nianticproject/ingress/common/factionchoice/d;

    return-object v0
.end method

.method static synthetic c()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->o:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/az;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->z:Lcom/nianticproject/ingress/common/factionchoice/az;

    return-object v0
.end method

.method static synthetic d()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->p:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic e()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->q:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/factionchoice/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->w:Z

    return v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/az;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->A:Lcom/nianticproject/ingress/common/factionchoice/az;

    return-object v0
.end method

.method static synthetic f()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/factionchoice/n;->n:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/factionchoice/n;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->t:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->h()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->y:Lcom/nianticproject/ingress/common/factionchoice/ai;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/factionchoice/ai;->a()V

    return-void
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/u/q;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->v:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/b;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->x:Lcom/nianticproject/ingress/common/w/b;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/aa;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/factionchoice/ai;)V
    .locals 4
    .parameter

    .prologue
    .line 339
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/factionchoice/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->y:Lcom/nianticproject/ingress/common/factionchoice/ai;

    .line 340
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/w/b;->a()Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->f:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->f:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->r:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->k:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->f:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->s:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->f:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/c;->b()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->x:Lcom/nianticproject/ingress/common/w/b;

    .line 341
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/factionchoice/y;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/factionchoice/y;-><init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 354
    return-void

    .line 340
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/w/b;->a()Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->b:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->b:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->n:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->c:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->c:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->q:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->d:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->d:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->n:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->e:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->e:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->o:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->l:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->l:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->r:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->g:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->l:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->s:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->e:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->g:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->n:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->h:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->e:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->p:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->m:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->m:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->r:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->i:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->m:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->s:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->e:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->i:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/factionchoice/n;->n:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/n;->j:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/c;->b()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    goto/16 :goto_0
.end method
