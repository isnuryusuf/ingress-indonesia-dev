.class public final Lcom/nianticproject/ingress/common/factionchoice/aj;
.super Lcom/nianticproject/ingress/common/ui/b/s;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/factionchoice/az;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/nianticproject/ingress/common/c/bn;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nianticproject/ingress/common/c/bn;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/ac;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/b/s;-><init>(Lcom/nianticproject/ingress/common/ui/ad;[Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 56
    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/aq;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/factionchoice/aq;-><init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/c/bn;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->c:Lcom/nianticproject/ingress/common/c/bn;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/aj;Lcom/nianticproject/ingress/common/c/bn;)Lcom/nianticproject/ingress/common/c/bn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->c:Lcom/nianticproject/ingress/common/c/bn;

    return-object p1
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 216
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/factionchoice/ak;

    const-string/jumbo v2, "playNextClip"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/factionchoice/ak;-><init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Ljava/lang/String;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 237
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/aj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/factionchoice/aj;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->b:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/factionchoice/az;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->c:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->c:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->c:Lcom/nianticproject/ingress/common/c/bn;

    .line 251
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/factionchoice/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/s;->a()V

    .line 212
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(I)V

    .line 213
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->d()V

    .line 242
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/s;->b()V

    .line 243
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/s;->c()V

    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/bn;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->y:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->v:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->u:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/c/eq;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aj;->b:Ljava/util/Queue;

    .line 207
    return-void
.end method
