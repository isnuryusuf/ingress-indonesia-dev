.class final Landroid/support/v4/view/ba;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2516
    iput-object p1, p0, Landroid/support/v4/view/ba;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2516
    invoke-direct {p0, p1}, Landroid/support/v4/view/ba;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Landroid/support/v4/view/ba;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 2520
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 2523
    iget-object v0, p0, Landroid/support/v4/view/ba;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 2524
    return-void
.end method
