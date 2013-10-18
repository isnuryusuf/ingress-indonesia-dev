.class public final Lcom/nianticproject/ingress/common/ui/elements/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/elements/ah;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/ui/t;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private j:Lcom/nianticproject/ingress/common/ui/elements/i;

.field private k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private n:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private o:Lcom/nianticproject/ingress/common/ui/a/c;

.field private p:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

.field private q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

.field private r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

.field private s:Lcom/nianticproject/ingress/common/ui/widget/ap;

.field private final t:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

.field private u:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final v:Lcom/nianticproject/ingress/common/model/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/ab;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ac;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/ac;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ab;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->t:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 117
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ad;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/ad;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ab;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    .line 182
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->b:Lcom/nianticproject/ingress/common/ui/t;

    .line 183
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "xmProgress-aliens"

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    .line 219
    :goto_0
    new-instance v1, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;-><init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;)V

    .line 222
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(FZ)V

    .line 223
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(FZ)V

    .line 225
    return-object v1

    .line 213
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "xmProgress-resistance"

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "xmProgress-neutral"

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/nianticproject/ingress/common/ui/widget/ap;)Lcom/nianticproject/ingress/common/ui/widget/ap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/ap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/ap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/ap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 237
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "apProgress-aliens"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 245
    :goto_0
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ap;

    invoke-direct {v1, p2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ap;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 246
    return-object v1

    .line 239
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "apProgress-resistance"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "apProgress-neutral"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    goto :goto_0
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v0

    .line 513
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v2

    .line 514
    sub-long v4, p1, v0

    long-to-float v4, v4

    sub-long v0, v2, v0

    long-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 518
    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 519
    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/ab;->a:[I

    aget v0, v1, v0

    int-to-float v0, v0

    const/high16 v1, 0x437e

    div-float/2addr v0, v1

    .line 521
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->a(F)V

    .line 522
    return-void
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 541
    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 543
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/high16 v2, 0x3f40

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x4080

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3fc0

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 551
    :cond_0
    return-void
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 525
    const/4 v0, 0x0

    .line 527
    if-eqz p1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-ne p1, v1, :cond_1

    .line 529
    const-string/jumbo v1, "%d AP"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V

    .line 537
    invoke-static {v0, p2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V

    .line 538
    return-void

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-ne p1, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 532
    const-string/jumbo v1, "%d XM"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    const/high16 v0, 0x3fc0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v0, 0x3f40

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/elements/ab;->b(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;F)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method private b(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 478
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(FZ)V

    .line 483
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/nianticproject/ingress/common/ui/widget/ap;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->b:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/i;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->j:Lcom/nianticproject/ingress/common/ui/elements/i;

    return-object v0
.end method

.method protected final a(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 491
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_0

    cmp-long v0, p3, v5

    if-lez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "+%d AP"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;F)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    if-eqz v0, :cond_1

    .line 501
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(J)V

    .line 504
    cmp-long v0, p3, v5

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v1, 0x3e7d70a4

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;F)V

    .line 509
    :cond_1
    return-void
.end method

.method protected final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->u:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    .line 463
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    if-ne p7, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "+"

    const v5, 0x3eae147b

    move-wide v3, p5

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/a/b;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/String;JF)V

    .line 473
    :cond_0
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->b(JJ)V

    .line 475
    :cond_1
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 276
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 277
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 278
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 281
    const-string/jumbo v0, "default"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 282
    const-string/jumbo v1, "small"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 283
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0, v2, v3}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/ap;

    move-result-object v2

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    .line 284
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 287
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getWidth()F

    move-result v3

    .line 298
    const/high16 v2, 0x4180

    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v4

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 303
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v4

    sub-float/2addr v4, v2

    .line 305
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 306
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v6

    const/high16 v7, 0x40a0

    invoke-virtual {v6, v7}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 307
    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 308
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 309
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 310
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->j()Lcom/a/a/c;

    .line 311
    const-string/jumbo v2, "player-status-bar-background"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 314
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    aput-object v7, v2, v6

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v2

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    .line 315
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->t:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 316
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/a/c;->a(F)Lcom/a/a/c;

    .line 318
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 319
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 322
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v7

    long-to-float v2, v7

    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v7}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v7

    long-to-float v7, v7

    div-float/2addr v2, v7

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v2

    .line 324
    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v7}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v7

    invoke-direct {p0, v7, v2, v2}, Lcom/nianticproject/ingress/common/ui/elements/ab;->a(Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v2

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    .line 325
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, ""

    invoke-direct {v2, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 326
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 327
    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    const/4 v10, 0x0

    iput v10, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    if-eqz v2, :cond_0

    const-string/jumbo v9, "label_bg"

    invoke-virtual {p1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    const/4 v10, 0x0

    iput v10, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v2, v9, v8

    const/4 v2, 0x2

    aput-object v7, v9, v2

    invoke-static {v9}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v2

    :goto_0
    new-instance v8, Lcom/nianticproject/ingress/common/ui/elements/ag;

    invoke-direct {v8, p0, v7}, Lcom/nianticproject/ingress/common/ui/elements/ag;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ab;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    .line 328
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    const/high16 v7, 0x3e80

    invoke-static {v7}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v2

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 330
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 333
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, ""

    invoke-direct {v2, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 334
    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 335
    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    const/high16 v7, 0x3ec0

    invoke-static {v7}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v2

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 337
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 341
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, ""

    invoke-direct {v2, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 342
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const/4 v7, 0x0

    iput v7, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 343
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 344
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    const/high16 v7, 0x3ec0

    invoke-static {v7}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    .line 348
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, ""

    invoke-direct {v2, v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 349
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 350
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 351
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 352
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x3ec0

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 355
    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 358
    const-string/jumbo v0, "default"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v2, "OPS"

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ae;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/ae;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ab;)V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 359
    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3e4ccccd

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    const/high16 v2, 0x3e00

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    .line 362
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 365
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->s:Lcom/nianticproject/ingress/common/ui/widget/ap;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, ""

    const-string/jumbo v0, "bar-energy-gain"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 366
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    const/high16 v0, 0x40a0

    sub-float v0, v4, v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    new-instance v1, Lcom/nianticproject/ingress/common/ui/elements/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    const/high16 v3, 0x3e80

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->l:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    const/high16 v4, 0x3f40

    mul-float/2addr v3, v4

    const/high16 v4, 0x40a0

    sub-float/2addr v3, v4

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/elements/i;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FFF)V

    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/af;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/af;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ab;)V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->j:Lcom/nianticproject/ingress/common/ui/elements/i;

    .line 371
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->j:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 373
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface/range {v0 .. v7}, Lcom/nianticproject/ingress/common/model/l;->a(JJJLcom/nianticproject/ingress/common/model/z;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/l;->a(JLjava/util/List;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(IZ)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 374
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->q:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->u:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 375
    return-void

    .line 327
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v9, 0x0

    aput-object v8, v2, v9

    const/4 v8, 0x1

    aput-object v7, v2, v8

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->o:Lcom/nianticproject/ingress/common/ui/a/c;

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->o:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->o:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 451
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->c:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ab;->v:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 443
    return-void
.end method
