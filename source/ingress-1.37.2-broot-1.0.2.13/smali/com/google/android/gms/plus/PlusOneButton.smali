.class public final Lcom/google/android/gms/plus/PlusOneButton;
.super Landroid/view/ViewGroup;


# instance fields
.field private final a:Lcom/google/android/gms/internal/dz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/dz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->a:Lcom/google/android/gms/internal/dz;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->a:Lcom/google/android/gms/internal/dz;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/internal/dz;->layout(IIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setMeasuredDimension(II)V

    return-void
.end method
