.class final Landroid/support/v4/app/k;
.super Landroid/support/v4/app/j;
.source "SourceFile"


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final x:Landroid/view/animation/Interpolator;

.field static final y:Landroid/view/animation/Interpolator;

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/a;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/app/FragmentActivity;

.field p:Z

.field q:Z

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Landroid/os/Bundle;

.field v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    .line 378
    sput-boolean v0, Landroid/support/v4/app/k;->a:Z

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/k;->b:Z

    .line 672
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->x:Landroid/view/animation/Interpolator;

    .line 673
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->y:Landroid/view/animation/Interpolator;

    .line 674
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->z:Landroid/view/animation/Interpolator;

    .line 675
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->A:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/k;->n:I

    .line 414
    iput-object v1, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    .line 415
    iput-object v1, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    .line 417
    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->w:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 695
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 696
    sget-object v1, Landroid/support/v4/app/k;->y:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 697
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 698
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 681
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 682
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 684
    sget-object v1, Landroid/support/v4/app/k;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 685
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 686
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 687
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    sget-object v1, Landroid/support/v4/app/k;->y:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 689
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 690
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 691
    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x3f79999a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 703
    iget v0, p1, Landroid/support/v4/app/Fragment;->N:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->o()Landroid/view/animation/Animation;

    .line 705
    iget v0, p1, Landroid/support/v4/app/Fragment;->N:I

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget v2, p1, Landroid/support/v4/app/Fragment;->N:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-object v0

    .line 716
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 717
    goto :goto_0

    .line 720
    :cond_1
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    .line 721
    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    .line 722
    goto :goto_0

    .line 720
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 725
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 740
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 743
    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    .line 744
    goto :goto_0

    .line 727
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    const/high16 v0, 0x3f90

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/k;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 729
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/k;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 731
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/k;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 733
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x3f89999a

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/k;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 735
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4, v3}, Landroid/support/v4/app/k;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 737
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v4}, Landroid/support/v4/app/k;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 757
    goto :goto_0

    .line 720
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1363
    monitor-enter p0

    .line 1364
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    .line 1367
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1368
    if-ge p1, v0, :cond_2

    .line 1369
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Setting back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1370
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :goto_0
    monitor-exit p0

    return-void

    .line 1372
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1373
    iget-object v1, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    .line 1377
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/k;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Adding available back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1381
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Adding back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1382
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static d(I)I
    .locals 1
    .parameter

    .prologue
    .line 1988
    const/4 v0, 0x0

    .line 1989
    sparse-switch p0, :sswitch_data_0

    .line 2000
    :goto_0
    return v0

    .line 1991
    :sswitch_0
    const/16 v0, 0x2002

    .line 1992
    goto :goto_0

    .line 1994
    :sswitch_1
    const/16 v0, 0x1001

    .line 1995
    goto :goto_0

    .line 1997
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1989
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private d(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 1553
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1557
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    .line 1561
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1562
    iget-object v0, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1563
    iget-object v0, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    .line 1564
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    goto :goto_0

    .line 1559
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->v:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private e(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1569
    .line 1571
    iget-object v0, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    .line 1574
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 1575
    iget-object v0, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1576
    iget-object v0, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    .line 1577
    iput-object v1, p0, Landroid/support/v4/app/k;->u:Landroid/os/Bundle;

    .line 1580
    :goto_0
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1581
    invoke-direct {p0, p1}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;)V

    .line 1583
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 1584
    if-nez v0, :cond_2

    .line 1585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1587
    :cond_2
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1590
    :cond_3
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->S:Z

    if-nez v1, :cond_5

    .line 1591
    if-nez v0, :cond_4

    .line 1592
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1595
    :cond_4
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->S:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1598
    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private e(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/k;->a(IIIZ)V

    .line 1066
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 1313
    iget-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    if-eqz v0, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1456
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1457
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/a;)I
    .locals 3
    .parameter

    .prologue
    .line 1343
    monitor-enter p0

    .line 1344
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1345
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    .line 1348
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1349
    sget-boolean v1, Landroid/support/v4/app/k;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1350
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    monitor-exit p0

    .line 1357
    :goto_0
    return v0

    .line 1354
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1355
    sget-boolean v1, Landroid/support/v4/app/k;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1356
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1357
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 542
    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    if-gez v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    iget v1, p1, Landroid/support/v4/app/Fragment;->j:I

    if-lez v1, :cond_1

    .line 547
    invoke-direct {p0, p1}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 550
    :cond_1
    return-object v0
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1259
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1260
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1261
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->D:I

    if-ne v2, p1, :cond_1

    .line 1275
    :cond_0
    :goto_1
    return-object v0

    .line 1259
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1266
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1268
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1269
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1270
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->D:I

    if-eq v2, p1, :cond_0

    .line 1268
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1275
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 524
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 525
    if-ne v1, v0, :cond_1

    .line 526
    const/4 v0, 0x0

    .line 537
    :cond_0
    return-object v0

    .line 528
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 529
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fragement no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 533
    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fragement no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1281
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1282
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1283
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1297
    :cond_0
    :goto_1
    return-object v0

    .line 1281
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1288
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1291
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1292
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1290
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1297
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Landroid/support/v4/app/a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/k;)V

    return-object v0
.end method

.method final a(IIIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1069
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/k;->n:I

    if-ne v0, p1, :cond_2

    .line 1099
    :cond_1
    :goto_0
    return-void

    .line 1077
    :cond_2
    iput p1, p0, Landroid/support/v4/app/k;->n:I

    .line 1078
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    .line 1080
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1081
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1082
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1083
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1084
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/y;

    if-eqz v0, :cond_5

    .line 1085
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->b()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1080
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 1090
    :cond_3
    if-nez v7, :cond_4

    .line 1091
    invoke-virtual {p0}, Landroid/support/v4/app/k;->d()V

    .line 1094
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/k;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/k;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1095
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 1096
    iput-boolean v5, p0, Landroid/support/v4/app/k;->p:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 1882
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1883
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1884
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1885
    if-eqz v0, :cond_0

    .line 1886
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1883
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1890
    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iget v0, p3, Landroid/support/v4/app/Fragment;->o:I

    if-gez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1726
    if-nez p1, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1728
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1732
    if-eqz p2, :cond_4

    move v1, v2

    .line 1733
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1734
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1735
    sget-boolean v3, Landroid/support/v4/app/k;->a:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreAllState: re-attaching retained "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1736
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->o:I

    aget-object v3, v3, v4

    .line 1737
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1738
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    .line 1739
    iput v2, v0, Landroid/support/v4/app/Fragment;->A:I

    .line 1740
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->y:Z

    .line 1741
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1742
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    .line 1743
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 1744
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1745
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string/jumbo v4, "android:view_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    .line 1733
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1753
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    .line 1754
    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1755
    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    .line 1757
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 1758
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1759
    if-eqz v1, :cond_7

    .line 1760
    iget-object v3, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1761
    sget-boolean v4, Landroid/support/v4/app/k;->a:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreAllState: adding #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1762
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    iput-object v6, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1757
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1768
    :cond_7
    sget-boolean v1, Landroid/support/v4/app/k;->a:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreAllState: adding #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": (null)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1769
    :cond_8
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 1771
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    .line 1773
    :cond_9
    sget-boolean v1, Landroid/support/v4/app/k;->a:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreAllState: adding avail #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1774
    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1779
    :cond_b
    if-eqz p2, :cond_e

    move v3, v2

    .line 1780
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    .line 1781
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1782
    iget v1, v0, Landroid/support/v4/app/Fragment;->s:I

    if-ltz v1, :cond_c

    .line 1783
    iget v1, v0, Landroid/support/v4/app/Fragment;->s:I

    iget-object v4, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 1784
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->s:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    .line 1780
    :cond_c
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1786
    :cond_d
    const-string/jumbo v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1795
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_11

    .line 1796
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    move v1, v2

    .line 1797
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 1798
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1799
    if-nez v0, :cond_f

    .line 1800
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No instantiated fragment for index #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_f
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->u:Z

    .line 1804
    sget-boolean v3, Landroid/support/v4/app/k;->a:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreAllState: making added #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1805
    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1808
    :cond_11
    iput-object v6, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    .line 1812
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_15

    .line 1813
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    .line 1814
    :goto_7
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 1815
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/k;)Landroid/support/v4/app/a;

    move-result-object v0

    .line 1816
    sget-boolean v1, Landroid/support/v4/app/k;->a:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreAllState: adding bse #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " (index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/support/v4/app/a;->o:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1818
    :cond_13
    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    iget v1, v0, Landroid/support/v4/app/a;->o:I

    if-ltz v1, :cond_14

    .line 1820
    iget v1, v0, Landroid/support/v4/app/a;->o:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/k;->a(ILandroid/support/v4/app/a;)V

    .line 1814
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1824
    :cond_15
    iput-object v6, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1166
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " nesting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1167
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->g()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1168
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 1169
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1170
    iget-object v2, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1172
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v2, :cond_3

    .line 1173
    iput-boolean v1, p0, Landroid/support/v4/app/k;->p:Z

    .line 1175
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->u:Z

    .line 1176
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 1177
    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1180
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 1167
    goto :goto_0

    :cond_6
    move v2, v1

    .line 1177
    goto :goto_1
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 775
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-nez v0, :cond_0

    if-le p2, v5, :cond_0

    move p2, v5

    .line 778
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-le p2, v0, :cond_1

    .line 780
    iget p2, p1, Landroid/support/v4/app/Fragment;->j:I

    .line 784
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->R:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-ge v0, v8, :cond_2

    if-le p2, v6, :cond_2

    move p2, v6

    .line 787
    :cond_2
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-ge v0, p2, :cond_1d

    .line 791
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-nez v0, :cond_3

    .line 1058
    :goto_0
    return-void

    .line 794
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 799
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    .line 800
    iget v2, p1, Landroid/support/v4/app/Fragment;->l:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 802
    :cond_4
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    packed-switch v0, :pswitch_data_0

    .line 1057
    :cond_5
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->j:I

    goto :goto_0

    .line 804
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    :cond_6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 806
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    .line 808
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/k;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    .line 810
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    .line 811
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->t:I

    .line 814
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->S:Z

    .line 816
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->S:Z

    if-nez v0, :cond_8

    .line 817
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->R:Z

    .line 818
    if-le p2, v6, :cond_8

    move p2, v6

    .line 823
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    .line 824
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/k;

    .line 825
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 826
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 827
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_9

    .line 828
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 833
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_a

    .line 834
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 835
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 836
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_a

    .line 837
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_a
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->J:Z

    .line 842
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v0, :cond_c

    .line 846
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 848
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 849
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    .line 850
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/aa;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 851
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 852
    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 858
    :cond_c
    :goto_2
    :pswitch_1
    if-le p2, v5, :cond_18

    .line 859
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-nez v0, :cond_14

    .line 862
    iget v0, p1, Landroid/support/v4/app/Fragment;->E:I

    if-eqz v0, :cond_f

    .line 863
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->E:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 864
    if-nez v0, :cond_10

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->z:Z

    if-nez v1, :cond_10

    .line 865
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No view found for id 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/support/v4/app/Fragment;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_e
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    goto :goto_2

    :cond_f
    move-object v0, v7

    .line 870
    :cond_10
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/ViewGroup;

    .line 871
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 873
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v1, :cond_15

    .line 874
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    .line 875
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/aa;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 876
    if-eqz v0, :cond_12

    .line 877
    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 879
    if-eqz v1, :cond_11

    .line 880
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 882
    :cond_11
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 884
    :cond_12
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 891
    :cond_14
    :goto_3
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 892
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 893
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_16

    .line 894
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_15
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    goto :goto_3

    .line 897
    :cond_16
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 898
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->f()V

    .line 900
    :cond_17
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    .line 904
    :cond_18
    :pswitch_2
    if-le p2, v6, :cond_1a

    .line 905
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "moveto STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    :cond_19
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 907
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->A()V

    .line 908
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_1a

    .line 909
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_1a
    :pswitch_3
    if-le p2, v8, :cond_5

    .line 915
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "moveto RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    :cond_1b
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 917
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->w:Z

    .line 918
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->q()V

    .line 919
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_1c

    .line 920
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_1c
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    .line 924
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 927
    :cond_1d
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-le v0, p2, :cond_5

    .line 928
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1006
    :cond_1e
    :goto_4
    :pswitch_4
    if-gtz p2, :cond_5

    .line 1007
    iget-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    if-eqz v0, :cond_1f

    .line 1008
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1015
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    .line 1016
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    .line 1017
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1020
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1025
    iput p2, p1, Landroid/support/v4/app/Fragment;->l:I

    move p2, v5

    .line 1026
    goto/16 :goto_1

    .line 930
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_22

    .line 931
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 932
    :cond_20
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 933
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->r()V

    .line 934
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_21

    .line 935
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_21
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->w:Z

    .line 941
    :cond_22
    :pswitch_6
    if-ge p2, v8, :cond_24

    .line 942
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    :cond_23
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 944
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B()V

    .line 945
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_24

    .line 946
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_24
    :pswitch_7
    if-ge p2, v6, :cond_26

    .line 952
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movefrom STOPPED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    :cond_25
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->C()V

    .line 956
    :cond_26
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1e

    .line 957
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    :cond_27
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 961
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-nez v0, :cond_28

    .line 962
    invoke-direct {p0, p1}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;)V

    .line 965
    :cond_28
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 966
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->D()V

    .line 967
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_29

    .line 968
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_29
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 973
    iget v0, p0, Landroid/support/v4/app/k;->n:I

    if-lez v0, :cond_33

    iget-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    if-nez v0, :cond_33

    .line 974
    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 977
    :goto_5
    if-eqz v0, :cond_2a

    .line 979
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    .line 980
    iput p2, p1, Landroid/support/v4/app/Fragment;->l:I

    .line 981
    new-instance v1, Landroid/support/v4/app/n;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 997
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 999
    :cond_2a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1001
    :cond_2b
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/ViewGroup;

    .line 1002
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 1003
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/View;

    goto/16 :goto_4

    .line 1028
    :cond_2c
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movefrom CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    :cond_2d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_2e

    .line 1030
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 1031
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->s()V

    .line 1032
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_2e

    .line 1033
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_2e
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 1039
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B_()V

    .line 1040
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_2f

    .line 1041
    new-instance v0, Landroid/support/v4/app/ao;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_2f
    if-nez p5, :cond_5

    .line 1045
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_32

    .line 1046
    iget v0, p1, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v0, :cond_5

    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Freeing fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    :cond_31
    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->invalidateSupportFragmentIndex(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->t()V

    goto/16 :goto_1

    .line 1048
    :cond_32
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    .line 1049
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/k;

    goto/16 :goto_1

    :cond_33
    move-object v0, v7

    goto/16 :goto_5

    .line 802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 928
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1147
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    .line 1150
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1151
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->o:I

    if-gez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Allocated fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-nez v0, :cond_6

    .line 1153
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->u:Z

    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 1156
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_5

    .line 1157
    iput-boolean v2, p0, Landroid/support/v4/app/k;->p:Z

    .line 1159
    :cond_5
    if-eqz p2, :cond_6

    .line 1160
    invoke-virtual {p0, p1}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;)V

    .line 1163
    :cond_6
    return-void

    .line 1151
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1829
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1830
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    .line 1831
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1324
    if-nez p2, :cond_0

    .line 1325
    invoke-direct {p0}, Landroid/support/v4/app/k;->w()V

    .line 1327
    :cond_0
    monitor-enter p0

    .line 1328
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 1329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1331
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    .line 1334
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1336
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/k;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1337
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/k;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1339
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 571
    if-lez v4, :cond_1

    .line 572
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 575
    :goto_0
    if-ge v2, v4, :cond_1

    .line 576
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 578
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 575
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 588
    if-lez v4, :cond_2

    .line 589
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 590
    :goto_1
    if-ge v2, v4, :cond_2

    .line 591
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 593
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 598
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 600
    if-lez v4, :cond_3

    .line 601
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 602
    :goto_2
    if-ge v2, v4, :cond_3

    .line 603
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 604
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 605
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 610
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 611
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 612
    if-lez v4, :cond_4

    .line 613
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 614
    :goto_3
    if-ge v2, v4, :cond_4

    .line 615
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 616
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 617
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 614
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 623
    :cond_4
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 626
    if-lez v3, :cond_5

    .line 627
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 628
    :goto_4
    if-ge v2, v3, :cond_5

    .line 629
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 630
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 631
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 628
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 636
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 637
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 643
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 644
    if-lez v2, :cond_7

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    :goto_5
    if-ge v1, v2, :cond_7

    .line 647
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 648
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 649
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 654
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/k;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 656
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 657
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 658
    iget-boolean v0, p0, Landroid/support/v4/app/k;->p:Z

    if-eqz v0, :cond_8

    .line 659
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Landroid/support/v4/app/k;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 662
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 663
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 667
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    :cond_a
    return-void
.end method

.method final a(II)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1471
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return v3

    .line 1474
    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    .line 1475
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1476
    if-ltz v0, :cond_0

    .line 1479
    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1480
    invoke-virtual {v0, v2}, Landroid/support/v4/app/a;->a(Z)V

    .line 1528
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/k;->x()V

    move v3, v2

    .line 1530
    goto :goto_0

    .line 1483
    :cond_3
    const/4 v0, -0x1

    .line 1484
    if-ltz p1, :cond_7

    .line 1487
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1488
    :goto_1
    if-ltz v1, :cond_5

    .line 1489
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1490
    if-ltz p1, :cond_4

    iget v0, v0, Landroid/support/v4/app/a;->o:I

    if-eq p1, v0, :cond_5

    .line 1494
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 1497
    goto :goto_1

    .line 1498
    :cond_5
    if-ltz v1, :cond_0

    .line 1501
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 1502
    add-int/lit8 v1, v1, -0x1

    .line 1504
    :goto_2
    if-ltz v1, :cond_6

    .line 1505
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1506
    if-ltz p1, :cond_6

    iget v0, v0, Landroid/support/v4/app/a;->o:I

    if-ne p1, v0, :cond_6

    .line 1508
    add-int/lit8 v1, v1, -0x1

    .line 1509
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1515
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1518
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_8

    .line 1521
    iget-object v4, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1523
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    move v4, v3

    .line 1524
    :goto_4
    if-gt v4, v6, :cond_2

    .line 1525
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Popping back stack state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1526
    :cond_9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    if-ne v4, v6, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/support/v4/app/a;->a(Z)V

    .line 1524
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_a
    move v1, v3

    .line 1526
    goto :goto_5
.end method

.method public final b(I)V
    .locals 3
    .parameter

    .prologue
    .line 468
    if-gez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/k;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/Runnable;Z)V

    .line 476
    return-void
.end method

.method public final b(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->R:Z

    if-eqz v0, :cond_0

    .line 762
    iget-boolean v0, p0, Landroid/support/v4/app/k;->e:Z

    if-eqz v0, :cond_1

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->t:Z

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->R:Z

    .line 768
    iget v2, p0, Landroid/support/v4/app/k;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1183
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_4

    .line 1185
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 1186
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1187
    invoke-direct {p0, p1, p2, v2, p3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_1

    .line 1190
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1192
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_3

    .line 1195
    iput-boolean v2, p0, Landroid/support/v4/app/k;->p:Z

    .line 1197
    :cond_3
    invoke-static {}, Landroid/support/v4/app/Fragment;->k()V

    .line 1199
    :cond_4
    return-void
.end method

.method final b(Landroid/support/v4/app/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    .line 1466
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    invoke-direct {p0}, Landroid/support/v4/app/k;->x()V

    .line 1468
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/support/v4/app/k;->e()Z

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 1388
    monitor-enter p0

    .line 1389
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    .line 1393
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Freeing back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1394
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1061
    iget v2, p0, Landroid/support/v4/app/k;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1062
    return-void
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1202
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1203
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v0, :cond_4

    .line 1204
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 1205
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1206
    invoke-direct {p0, p1, p2, v3, p3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_1

    .line 1209
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1211
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_3

    .line 1214
    iput-boolean v3, p0, Landroid/support/v4/app/k;->p:Z

    .line 1216
    :cond_3
    invoke-static {}, Landroid/support/v4/app/Fragment;->k()V

    .line 1218
    :cond_4
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/support/v4/app/k;->w()V

    .line 446
    invoke-virtual {p0}, Landroid/support/v4/app/k;->e()Z

    .line 447
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/k;->a(II)Z

    move-result v0

    return v0
.end method

.method final d()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    return-void

    .line 1104
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1105
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1106
    if-eqz v0, :cond_2

    .line 1107
    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;)V

    .line 1104
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1221
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1222
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-nez v0, :cond_3

    .line 1223
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->H:Z

    .line 1224
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v0, :cond_3

    .line 1226
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1229
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_2

    .line 1230
    iput-boolean v2, p0, Landroid/support/v4/app/k;->p:Z

    .line 1232
    :cond_2
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->u:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1233
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1236
    :cond_3
    return-void
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1239
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1240
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v0, :cond_3

    .line 1241
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->H:Z

    .line 1242
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-nez v0, :cond_3

    .line 1243
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    .line 1246
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->u:Z

    .line 1248
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_2

    .line 1249
    iput-boolean v2, p0, Landroid/support/v4/app/k;->p:Z

    .line 1251
    :cond_2
    iget v2, p0, Landroid/support/v4/app/k;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1254
    :cond_3
    return-void
.end method

.method public final e()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1402
    iget-boolean v1, p0, Landroid/support/v4/app/k;->e:Z

    if-eqz v1, :cond_0

    .line 1403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1415
    :goto_0
    monitor-enter p0

    .line 1416
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1417
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    iget-boolean v0, p0, Landroid/support/v4/app/k;->t:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1440
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1441
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1442
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/y;

    if-eqz v5, :cond_3

    .line 1443
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->b()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1440
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1420
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1421
    iget-object v1, p0, Landroid/support/v4/app/k;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/k;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1422
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/k;->d:[Ljava/lang/Runnable;

    .line 1424
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/k;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1425
    iget-object v1, p0, Landroid/support/v4/app/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1426
    iget-object v1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/k;->w:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1427
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    iput-boolean v0, p0, Landroid/support/v4/app/k;->e:Z

    move v1, v2

    .line 1430
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1431
    iget-object v4, p0, Landroid/support/v4/app/k;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1432
    iget-object v4, p0, Landroid/support/v4/app/k;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1434
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/k;->e:Z

    move v1, v0

    .line 1436
    goto :goto_0

    .line 1446
    :cond_8
    if-nez v4, :cond_9

    .line 1447
    iput-boolean v2, p0, Landroid/support/v4/app/k;->t:Z

    .line 1448
    invoke-virtual {p0}, Landroid/support/v4/app/k;->d()V

    .line 1451
    :cond_9
    return v1
.end method

.method final f()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    const/4 v1, 0x0

    .line 1535
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1536
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1537
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1538
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->I:Z

    if-eqz v2, :cond_1

    .line 1539
    if-nez v1, :cond_0

    .line 1540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->J:Z

    .line 1544
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->o:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->s:I

    .line 1545
    sget-boolean v2, Landroid/support/v4/app/k;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "retainNonConfig: keeping retained "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1536
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1544
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1549
    :cond_3
    return-object v1
.end method

.method final g()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1604
    invoke-virtual {p0}, Landroid/support/v4/app/k;->e()Z

    .line 1606
    sget-boolean v0, Landroid/support/v4/app/k;->b:Z

    if-eqz v0, :cond_0

    .line 1616
    iput-boolean v1, p0, Landroid/support/v4/app/k;->q:Z

    .line 1619
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1720
    :cond_1
    :goto_0
    return-object v3

    .line 1624
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1625
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1627
    :goto_1
    if-ge v5, v6, :cond_9

    .line 1628
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1629
    if-eqz v0, :cond_11

    .line 1630
    iget v2, v0, Landroid/support/v4/app/Fragment;->o:I

    if-gez v2, :cond_3

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failure saving state: active "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has cleared index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1633
    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string/jumbo v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v5, Landroid/support/v4/c/b;

    const-string/jumbo v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1635
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1640
    :cond_3
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1641
    aput-object v2, v7, v5

    .line 1643
    iget v8, v0, Landroid/support/v4/app/Fragment;->j:I

    if-lez v8, :cond_8

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v8, :cond_8

    .line 1644
    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1646
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_6

    .line 1647
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->o:I

    if-gez v8, :cond_4

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failure saving state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1650
    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string/jumbo v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v5, Landroid/support/v4/c/b;

    const-string/jumbo v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1652
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1654
    :cond_4
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v8, :cond_5

    .line 1655
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1657
    :cond_5
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/k;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1659
    iget v8, v0, Landroid/support/v4/app/Fragment;->t:I

    if-eqz v8, :cond_6

    .line 1660
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1670
    :cond_6
    :goto_2
    sget-boolean v8, Landroid/support/v4/app/k;->a:Z

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Saved state of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    move v0, v1

    .line 1627
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_1

    .line 1667
    :cond_8
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    goto :goto_2

    .line 1675
    :cond_9
    if-nez v2, :cond_a

    .line 1676
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    goto/16 :goto_0

    .line 1684
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1685
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1686
    if-lez v5, :cond_d

    .line 1687
    new-array v1, v5, [I

    move v2, v4

    .line 1688
    :goto_4
    if-ge v2, v5, :cond_e

    .line 1689
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->o:I

    aput v0, v1, v2

    .line 1690
    aget v0, v1, v2

    if-gez v0, :cond_b

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failure saving state: active "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " has cleared index: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1693
    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string/jumbo v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v5, Landroid/support/v4/c/b;

    const-string/jumbo v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1695
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1697
    :cond_b
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveAllState: adding fragment #"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1688
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_d
    move-object v1, v3

    .line 1704
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 1705
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1706
    if-lez v5, :cond_10

    .line 1707
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1708
    :goto_5
    if-ge v2, v5, :cond_10

    .line 1709
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/a;)V

    aput-object v4, v3, v2

    .line 1710
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveAllState: adding back stack #"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1708
    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 1716
    :cond_10
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1717
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1718
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1719
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 1720
    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_3
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 1835
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 1839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1840
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 1844
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1845
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 1848
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 1849
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1850
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 1853
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 1854
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1855
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 1858
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1859
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 1865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 1867
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1868
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 1871
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1872
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 1875
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    .line 1876
    invoke-virtual {p0}, Landroid/support/v4/app/k;->e()Z

    .line 1877
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->e(I)V

    .line 1878
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    .line 1879
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1894
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1895
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1896
    if-eqz v0, :cond_0

    .line 1897
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1894
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1901
    :cond_1
    return-void
.end method

.method public final r()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1904
    .line 1905
    const/4 v1, 0x0

    .line 1906
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    .line 1907
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1908
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1909
    if-eqz v0, :cond_1

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v5, :cond_1

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v5, :cond_1

    .line 1910
    const/4 v2, 0x1

    .line 1911
    invoke-static {}, Landroid/support/v4/app/Fragment;->u()V

    .line 1912
    if-nez v1, :cond_0

    .line 1913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 1907
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 1920
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1921
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 1922
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1923
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1924
    :cond_4
    invoke-static {}, Landroid/support/v4/app/Fragment;->w()V

    .line 1921
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1929
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    .line 1931
    return v2
.end method

.method public final s()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1935
    .line 1936
    iget-object v1, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    .line 1937
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1938
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1939
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    .line 1940
    const/4 v2, 0x1

    .line 1941
    invoke-static {}, Landroid/support/v4/app/Fragment;->v()V

    .line 1937
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1945
    :cond_2
    return v2
.end method

.method public final t()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1949
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 1950
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1951
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1952
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    .line 1953
    invoke-static {}, Landroid/support/v4/app/Fragment;->x()Z

    .line 1954
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1959
    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 560
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1963
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 1964
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1965
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1966
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v3, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->S:Z

    if-eqz v0, :cond_0

    .line 1967
    invoke-static {}, Landroid/support/v4/app/Fragment;->z()Z

    .line 1968
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1973
    :cond_1
    return v2
.end method

.method public final v()V
    .locals 3

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1978
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1979
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1980
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    .line 1981
    invoke-static {}, Landroid/support/v4/app/Fragment;->y()V

    .line 1978
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1985
    :cond_1
    return-void
.end method
