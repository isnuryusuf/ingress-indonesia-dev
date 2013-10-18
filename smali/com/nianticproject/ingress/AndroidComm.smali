.class public Lcom/nianticproject/ingress/AndroidComm;
.super Lcom/nianticproject/ingress/ui/CommSlidingDrawer;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/x;
.implements Lcom/nianticproject/ingress/common/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/ui/CommSlidingDrawer;",
        "Landroid/support/v4/app/x",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/nianticproject/ingress/common/a;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:I

.field private C:F

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nianticproject/ingress/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/nianticproject/ingress/common/w/aa;

.field private final g:Landroid/support/v4/app/w;

.field private final h:Lcom/nianticproject/ingress/x;

.field private final i:Lcom/nianticproject/ingress/ui/t;

.field private j:Lcom/nianticproject/ingress/common/ui/elements/bo;

.field private k:Lcom/nianticproject/ingress/ui/CommHandle;

.field private l:Landroid/view/View;

.field private m:[Landroid/view/View;

.field private n:Landroid/support/v4/view/ViewPager;

.field private final o:Lcom/nianticproject/ingress/ak;

.field private p:Landroid/view/View;

.field private q:I

.field private r:Z

.field private s:Lcom/nianticproject/ingress/ui/r;

.field private t:I

.field private u:F

.field private v:Lcom/nianticproject/ingress/common/b;

.field private w:Z

.field private x:J

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "\\s*(@[0-9a-zA-Z]*\\s*)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/AndroidComm;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->e:Ljava/util/HashSet;

    .line 160
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->f:Lcom/nianticproject/ingress/common/w/aa;

    .line 181
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->u:F

    .line 182
    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    .line 222
    iput v4, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    .line 224
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 225
    new-instance v1, Lcom/nianticproject/ingress/ui/t;

    invoke-direct {v1}, Lcom/nianticproject/ingress/ui/t;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->i:Lcom/nianticproject/ingress/ui/t;

    .line 226
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/nianticproject/ingress/ak;

    iget-boolean v3, p0, Lcom/nianticproject/ingress/AndroidComm;->w:Z

    invoke-direct {v2, v1, v3}, Lcom/nianticproject/ingress/ak;-><init>(Landroid/support/v4/app/j;Z)V

    iput-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    .line 229
    new-instance v1, Lcom/nianticproject/ingress/x;

    new-instance v2, Lcom/nianticproject/ingress/h;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/h;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/x;-><init>(Lcom/nianticproject/ingress/y;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    .line 246
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->g:Landroid/support/v4/app/w;

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->f:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "LoaderManager(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/AndroidComm;->g:Landroid/support/v4/app/w;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->e:Ljava/util/HashSet;

    .line 160
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->f:Lcom/nianticproject/ingress/common/w/aa;

    .line 181
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->u:F

    .line 182
    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    .line 222
    iput v4, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    .line 224
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 225
    new-instance v1, Lcom/nianticproject/ingress/ui/t;

    invoke-direct {v1}, Lcom/nianticproject/ingress/ui/t;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->i:Lcom/nianticproject/ingress/ui/t;

    .line 226
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/nianticproject/ingress/ak;

    iget-boolean v3, p0, Lcom/nianticproject/ingress/AndroidComm;->w:Z

    invoke-direct {v2, v1, v3}, Lcom/nianticproject/ingress/ak;-><init>(Landroid/support/v4/app/j;Z)V

    iput-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    .line 229
    new-instance v1, Lcom/nianticproject/ingress/x;

    new-instance v2, Lcom/nianticproject/ingress/h;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/h;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/x;-><init>(Lcom/nianticproject/ingress/y;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    .line 246
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->g:Landroid/support/v4/app/w;

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->f:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "LoaderManager(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/AndroidComm;->g:Landroid/support/v4/app/w;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/AndroidComm;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/x;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->m()Z

    move-result v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_7

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/nianticproject/ingress/AndroidComm;->u:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->u:F

    iget-object v3, p0, Lcom/nianticproject/ingress/AndroidComm;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    invoke-virtual {v0, v4, v5, v6}, Lcom/nianticproject/ingress/x;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->k:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/CommHandle;->a(I)V

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->d(Z)V

    :cond_5
    return-void

    :cond_6
    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x4

    :goto_2
    iget-object v3, p0, Lcom/nianticproject/ingress/AndroidComm;->p:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/nianticproject/ingress/AndroidComm;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;JI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/b;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    move v8, v4

    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;ZJIZ)I

    .line 537
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 875
    invoke-static {}, Lcom/nianticproject/ingress/common/w/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/x;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/bo;->a(Ljava/lang/String;)V

    .line 665
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->t:I

    .line 667
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/AndroidComm;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/nianticproject/ingress/x;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/AndroidComm;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->t:I

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/AndroidComm;)Lcom/nianticproject/ingress/ak;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    return-object v0
.end method

.method private d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ak;->b(Z)V

    .line 427
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/AndroidComm;)[Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/AndroidComm;)Lcom/nianticproject/ingress/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->i:Lcom/nianticproject/ingress/ui/t;

    return-object v0
.end method

.method private e(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->a(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v0

    .line 437
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/nianticproject/ingress/AndroidComm;->w:Z

    if-eq v2, v0, :cond_2

    .line 438
    :cond_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/AndroidComm;->w:Z

    .line 440
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/AndroidComm;->w:Z

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/ak;->a(Z)V

    move v0, v1

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 444
    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/ak;->c(I)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 445
    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :goto_1
    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    aget-object v2, v2, v0

    new-instance v3, Lcom/nianticproject/ingress/z;

    invoke-direct {v3, p0, v0, v1}, Lcom/nianticproject/ingress/z;-><init>(Lcom/nianticproject/ingress/AndroidComm;IB)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 452
    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/AndroidComm;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/nianticproject/ingress/AndroidComm;->n()V

    return-void
.end method

.method static synthetic g(Lcom/nianticproject/ingress/AndroidComm;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/AndroidComm;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/AndroidComm;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/AndroidComm;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->t:I

    return v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/AndroidComm;)Lcom/nianticproject/ingress/common/ui/elements/bo;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 774
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/AndroidComm;->d:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 778
    :goto_0
    iget v3, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    if-eq v3, v1, :cond_1

    move v3, v1

    .line 780
    :goto_1
    iget-object v4, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 781
    return-void

    :cond_0
    move v0, v2

    .line 774
    goto :goto_0

    :cond_1
    move v3, v2

    .line 778
    goto :goto_1

    :cond_2
    move v1, v2

    .line 780
    goto :goto_2
.end method

.method private o()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->g:Landroid/support/v4/app/w;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/w;->b(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;

    .line 785
    return-void
.end method


# virtual methods
.method public final A_()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->f:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onLoaderReset"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->s:Lcom/nianticproject/ingress/ui/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/r;->a(Landroid/database/Cursor;)V

    .line 815
    return-void
.end method

.method public final a()Landroid/support/v4/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    :try_start_0
    const-string/jumbo v0, "AndroidComm.onCreateLoader"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    iget v1, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ak;->b(I)I

    move-result v4

    .line 792
    new-instance v0, Lcom/nianticproject/ingress/content/e;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "timestamp DESC"

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/content/e;-><init>(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 711
    iget v2, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/nianticproject/ingress/AndroidComm;->r:Z

    if-nez v2, :cond_0

    .line 736
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v2

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->a(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v2

    .line 719
    if-ne p1, v1, :cond_1

    if-nez v2, :cond_1

    move p1, v0

    .line 723
    :cond_1
    iput p1, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    .line 724
    iput-boolean v0, p0, Lcom/nianticproject/ingress/AndroidComm;->r:Z

    .line 726
    invoke-direct {p0}, Lcom/nianticproject/ingress/AndroidComm;->n()V

    .line 729
    if-eq p1, v1, :cond_4

    .line 730
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_6

    if-nez v1, :cond_2

    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->B:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->B:I

    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getY()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/AndroidComm;->C:F

    :cond_2
    iget v2, p0, Lcom/nianticproject/ingress/AndroidComm;->C:F

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_2
    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getY()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/nianticproject/ingress/AndroidComm;->B:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 732
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->s:Lcom/nianticproject/ingress/ui/r;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v1, p1}, Lcom/nianticproject/ingress/ak;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/r;->a(I)V

    .line 733
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->n:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v1, p1}, Lcom/nianticproject/ingress/ak;->c(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 734
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->i:Lcom/nianticproject/ingress/ui/t;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/t;->a(Landroid/view/View;)V

    .line 735
    invoke-direct {p0}, Lcom/nianticproject/ingress/AndroidComm;->o()V

    goto :goto_0

    :cond_4
    move v1, v0

    .line 729
    goto :goto_1

    .line 730
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->B:I

    int-to-float v0, v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x4

    goto :goto_4
.end method

.method public final a(Lcom/nianticproject/ingress/common/b;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    const-string/jumbo v0, "setChannel"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/AndroidComm;->e(Z)V

    .line 389
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    if-ne v0, p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 393
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    .line 395
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ak;->a(Lcom/nianticproject/ingress/common/b;)V

    .line 397
    sget-object v0, Lcom/nianticproject/ingress/o;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 401
    iput-boolean v3, p0, Lcom/nianticproject/ingress/AndroidComm;->r:Z

    .line 402
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    invoke-virtual {p0, v0, v2}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->k:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/ui/CommHandle;->a(I)V

    .line 409
    iput-boolean v3, p0, Lcom/nianticproject/ingress/AndroidComm;->r:Z

    .line 410
    invoke-virtual {p0, v2, v2}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/common/c;)V
    .locals 1
    .parameter

    .prologue
    .line 895
    new-instance v0, Lcom/nianticproject/ingress/k;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/k;-><init>(Lcom/nianticproject/ingress/AndroidComm;Lcom/nianticproject/ingress/common/c;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/Runnable;)V

    .line 901
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/elements/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/nianticproject/ingress/AndroidComm;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    .line 861
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/content/f;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 602
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/content/f;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->m()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->k:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/ui/CommHandle;->a()I

    move-result v2

    if-ne v2, v7, :cond_4

    :cond_0
    move v2, v0

    .line 606
    :goto_0
    if-nez v2, :cond_3

    .line 608
    invoke-virtual {p1}, Lcom/nianticproject/ingress/content/f;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/nianticproject/ingress/content/f;->moveToPosition(I)Z

    .line 609
    :cond_1
    invoke-virtual {p1}, Lcom/nianticproject/ingress/content/f;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    invoke-virtual {p1, v6}, Lcom/nianticproject/ingress/content/f;->getLong(I)J

    move-result-wide v2

    .line 611
    iget-wide v4, p0, Lcom/nianticproject/ingress/AndroidComm;->x:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 613
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/nianticproject/ingress/content/f;->getInt(I)I

    move-result v2

    .line 616
    if-eqz v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/nianticproject/ingress/AndroidComm;->k:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-virtual {v2, v7}, Lcom/nianticproject/ingress/ui/CommHandle;->a(I)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nianticproject/ingress/push/d;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/push/d;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->al:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 624
    :cond_2
    invoke-virtual {p1}, Lcom/nianticproject/ingress/content/f;->moveToLast()Z

    .line 625
    invoke-virtual {p1, v6}, Lcom/nianticproject/ingress/content/f;->getLong(I)J

    move-result-wide v0

    .line 626
    iget-wide v2, p0, Lcom/nianticproject/ingress/AndroidComm;->x:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    .line 627
    iput-wide v0, p0, Lcom/nianticproject/ingress/AndroidComm;->x:J

    .line 630
    :cond_3
    return-void

    :cond_4
    move v2, v1

    .line 602
    goto :goto_0

    :cond_5
    move v0, v1

    .line 618
    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/shared/plext/c;)V
    .locals 2
    .parameter

    .prologue
    .line 553
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/plext/c;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/util/List;)V

    .line 554
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/ui/k;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ak;->a(Lcom/nianticproject/ingress/ui/k;)V

    .line 256
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 74
    check-cast p1, Landroid/database/Cursor;

    :try_start_0
    const-string/jumbo v0, "AndroidComm.onLoadFinished"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->f:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onLoadFinished"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "AndroidComm.updateStatusMessage"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->s:Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ui/r;->a(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :cond_1
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 558
    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x9c4

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;JI)V

    .line 560
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 821
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 823
    sget v0, Lcom/nianticproject/ingress/ak;->c:I

    invoke-static {p2, v0}, Lcom/nianticproject/ingress/content/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    const/4 v0, 0x2

    .line 828
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    .line 832
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 842
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 846
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 826
    goto :goto_0

    .line 844
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aN:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;JI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;JI)V

    .line 543
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    const-string/jumbo v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x9c4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;JI)V

    .line 549
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 884
    new-instance v0, Lcom/nianticproject/ingress/j;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/j;-><init>(Lcom/nianticproject/ingress/AndroidComm;Z)V

    .line 890
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/Runnable;)V

    .line 891
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/c;)V
    .locals 1
    .parameter

    .prologue
    .line 905
    new-instance v0, Lcom/nianticproject/ingress/l;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/l;-><init>(Lcom/nianticproject/ingress/AndroidComm;Lcom/nianticproject/ingress/common/c;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/Runnable;)V

    .line 911
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    new-instance v1, Lcom/nianticproject/ingress/v;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/v;-><init>(Lcom/nianticproject/ingress/AndroidComm;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/x;->post(Ljava/lang/Runnable;)Z

    .line 656
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 924
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/m;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/m;-><init>(Lcom/nianticproject/ingress/AndroidComm;Z)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 421
    const-string/jumbo v0, "scrollToBottom"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ak;->e()V

    .line 423
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    new-instance v1, Lcom/nianticproject/ingress/w;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/w;-><init>(Lcom/nianticproject/ingress/AndroidComm;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/x;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    :goto_0
    return-void

    .line 942
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/n;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/n;-><init>(Lcom/nianticproject/ingress/AndroidComm;Z)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    new-instance v1, Lcom/nianticproject/ingress/i;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/i;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/x;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->l()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->onAttachedToWindow()V

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/AndroidComm;->x:J

    .line 461
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->v:Lcom/nianticproject/ingress/common/b;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ak;->a(Lcom/nianticproject/ingress/common/b;)V

    .line 469
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/AndroidComm;->r:Z

    .line 470
    iget v0, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    .line 472
    invoke-direct {p0}, Lcom/nianticproject/ingress/AndroidComm;->o()V

    .line 473
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->h:Lcom/nianticproject/ingress/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/x;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 480
    invoke-super {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->onDetachedFromWindow()V

    .line 481
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 260
    invoke-super {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->onFinishInflate()V

    .line 263
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->p:Landroid/view/View;

    .line 264
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    .line 265
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->l:Landroid/view/View;

    .line 266
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->n:Landroid/support/v4/view/ViewPager;

    .line 267
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    .line 268
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    .line 269
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->A:Landroid/widget/LinearLayout;

    .line 270
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/CommHandle;

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->k:Lcom/nianticproject/ingress/ui/CommHandle;

    .line 273
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/AndroidComm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    .line 278
    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/AndroidComm;->e(Z)V

    .line 281
    new-instance v0, Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    iget v5, p0, Lcom/nianticproject/ingress/AndroidComm;->q:I

    invoke-virtual {v4, v5}, Lcom/nianticproject/ingress/ak;->b(I)I

    move-result v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/ui/r;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZIZ)V

    iput-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->s:Lcom/nianticproject/ingress/ui/r;

    .line 283
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->s:Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->n:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->m:[Landroid/view/View;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 287
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->n:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nianticproject/ingress/AndroidComm;->o:Lcom/nianticproject/ingress/ak;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/v;)V

    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->n:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/nianticproject/ingress/p;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/p;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/az;)V

    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->y:Landroid/widget/EditText;

    new-instance v1, Lcom/nianticproject/ingress/q;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/q;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/r;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/r;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/nianticproject/ingress/AndroidComm;->z:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    new-instance v0, Lcom/nianticproject/ingress/s;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/s;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/ui/n;)V

    .line 352
    new-instance v0, Lcom/nianticproject/ingress/t;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/t;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/ui/p;)V

    .line 362
    new-instance v0, Lcom/nianticproject/ingress/u;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/u;-><init>(Lcom/nianticproject/ingress/AndroidComm;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/ui/o;)V

    .line 371
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 850
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 851
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 854
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/AndroidComm;->d(Z)V

    .line 856
    :cond_0
    return v0
.end method
