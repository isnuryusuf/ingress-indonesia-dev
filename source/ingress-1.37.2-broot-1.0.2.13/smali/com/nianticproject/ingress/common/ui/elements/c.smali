.class public final Lcom/nianticproject/ingress/common/ui/elements/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/elements/ah;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/ui/t;

.field private final c:Lcom/nianticproject/ingress/common/j/av;

.field private final d:Lcom/nianticproject/ingress/common/model/k;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private k:Lcom/nianticproject/ingress/common/ui/elements/i;

.field private l:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private o:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private p:Lcom/nianticproject/ingress/common/ui/a/c;

.field private q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

.field private r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

.field private s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

.field private t:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

.field private u:Lcom/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c",
            "<",
            "Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final w:Lcom/nianticproject/ingress/common/model/l;

.field private final x:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/nianticproject/ingress/shared/t;->b()I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/ui/elements/c;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/f;-><init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    .line 646
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/g;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/g;-><init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->x:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    .line 122
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->b:Lcom/nianticproject/ingress/common/ui/t;

    .line 123
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->c:Lcom/nianticproject/ingress/common/j/av;

    .line 124
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/c;Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/c;Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "xmProgress-aliens"

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    .line 185
    :goto_0
    new-instance v1, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;-><init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;)V

    .line 186
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(FZ)V

    .line 187
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(FZ)V

    .line 188
    return-object v1

    .line 178
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "xmProgress-resistance"

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "xmProgress-neutral"

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/c;Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->b:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method

.method private a(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 483
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(FZ)V

    .line 488
    return-void
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 554
    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 556
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

    .line 564
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
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

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/c;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method private b()Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;
    .locals 5

    .prologue
    .line 130
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/h;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    const-string/jumbo v0, "scanner-ap-progress-neutral"

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    .line 144
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    long-to-float v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 146
    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;-><init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;F)V

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->x:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 149
    return-object v2

    .line 132
    :pswitch_0
    const-string/jumbo v0, "scanner-ap-progress-aliens"

    goto :goto_0

    .line 136
    :pswitch_1
    const-string/jumbo v0, "scanner-ap-progress-resistance"

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(F)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 532
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v0

    .line 534
    sget v1, Lcom/nianticproject/ingress/common/ui/elements/c;->a:I

    if-ge v0, v1, :cond_0

    .line 537
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v0

    .line 538
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%,d / %,d AP"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V

    .line 545
    return-void

    .line 541
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%,d AP"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/c;->b()Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 497
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v0

    .line 498
    sget v1, Lcom/nianticproject/ingress/common/ui/elements/c;->a:I

    if-ge v0, v1, :cond_0

    .line 500
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v1

    .line 501
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->b(I)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 502
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v5

    sub-long v0, v5, v1

    .line 503
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a()I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v0, v5

    long-to-float v0, v0

    long-to-float v1, v3

    div-float/2addr v0, v1

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b()Lcom/nianticproject/ingress/common/ui/elements/bn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/bn;->a(F)V

    .line 509
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->u:Lcom/a/a/c;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/ui/elements/c;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/c;->c()V

    return-void
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/ui/elements/c;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->b(F)V

    return-void
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/ui/elements/c;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%,d XM"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0, v7}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v0, v7}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/i;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->k:Lcom/nianticproject/ingress/common/ui/elements/i;

    return-object v0
.end method

.method protected final a(J)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x4000

    const v7, 0x3ff33333

    const/high16 v6, 0x3e80

    .line 517
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_0

    cmp-long v0, p1, v10

    if-lez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "+%,d AP"

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v3, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(FFFF)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefWidth()F

    move-result v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setX(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setY(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    const v2, 0x3e051eb8

    mul-float/2addr v0, v2

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-static {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->pow3:Lcom/badlogic/gdx/math/Interpolation$Pow;

    invoke-static {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getY()F

    move-result v4

    add-float/2addr v0, v4

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v3, v0, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/c;->c()V

    .line 525
    cmp-long v0, p1, v10

    if-eqz v0, :cond_1

    .line 527
    const v0, 0x3e7d70a4

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->b(F)V

    .line 529
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
    .line 467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->v:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    .line 468
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    if-ne p7, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "+"

    const v5, 0x3eae147b

    move-wide v3, p5

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/a/b;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/String;JF)V

    .line 478
    :cond_0
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(JJ)V

    .line 480
    :cond_1
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 228
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 229
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 233
    const-string/jumbo v0, "default"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "small"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 235
    const-string/jumbo v1, "profiles-player-header-level-number"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 239
    const/high16 v2, 0x40a0

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    .line 242
    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    .line 245
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 246
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 251
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 252
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 253
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    sub-float v4, v6, v4

    invoke-virtual {v5, v4}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 255
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 259
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 260
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 261
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 262
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 265
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    sub-float v4, v6, v4

    invoke-virtual {v5, v4}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 269
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 270
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 276
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v5

    long-to-float v5, v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v5

    .line 278
    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    invoke-direct {p0, v6, v5, v5}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v5

    iput-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    .line 279
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v6, ""

    invoke-direct {v5, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 280
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->x:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    if-eqz v5, :cond_1

    const-string/jumbo v8, "label_bg"

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v5, v8, v6

    const/4 v5, 0x2

    aput-object v0, v8, v5

    invoke-static {v8}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v5

    const/high16 v6, 0x3f40

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 288
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 291
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "L"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 296
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 300
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 304
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 305
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 306
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 311
    const-string/jumbo v0, "player-status-bar-background"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 314
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/c;->b()Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->q:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->u:Lcom/a/a/c;

    .line 320
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 323
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->c:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {v0, v3, v5, p1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->t:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    .line 327
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->t:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->t:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/elements/e;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/common/ui/elements/e;-><init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 343
    :goto_1
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v3, "default"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, "OPS"

    invoke-direct {v3, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/d;-><init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 349
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    .line 350
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v3

    const v4, 0x40566666

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v3

    const/high16 v4, 0x4000

    mul-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 358
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 359
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 360
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 361
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 363
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 366
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, ""

    const-string/jumbo v0, "bar-energy-gain"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, ""

    const-string/jumbo v0, "bar-ap-gain"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const/high16 v3, 0x3e80

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v1

    sub-float v1, v3, v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->m:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    const/high16 v4, 0x3f40

    mul-float/2addr v3, v4

    sub-float v2, v3, v2

    new-instance v3, Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/i;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FFF)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->k:Lcom/nianticproject/ingress/common/ui/elements/i;

    .line 374
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->k:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 376
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La;->q()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface/range {v0 .. v7}, Lcom/nianticproject/ingress/common/model/l;->a(JJJLcom/nianticproject/ingress/common/model/z;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->e()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/l;->a(JLjava/util/List;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/l;->a(IZ)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->s:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->v:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 378
    return-void

    .line 281
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v0

    goto/16 :goto_0

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->t:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->p:Lcom/nianticproject/ingress/common/ui/a/c;

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->p:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->p:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 456
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->d:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/c;->w:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 448
    return-void
.end method
