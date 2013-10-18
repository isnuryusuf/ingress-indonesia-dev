.class Landroid/support/v4/view/a/b;
.super Landroid/support/v4/view/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/support/v4/view/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 418
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 562
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 563
    return-void
.end method

.method public final a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 612
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 613
    return-void
.end method
