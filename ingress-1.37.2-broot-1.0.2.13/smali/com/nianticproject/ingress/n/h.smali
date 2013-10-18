.class public final Lcom/nianticproject/ingress/n/h;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/nianticproject/ingress/ui/a/b;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/nianticproject/ingress/ui/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "^[a-zA-Z0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/n/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 219
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/h;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 221
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/nianticproject/ingress/n/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/h;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v2, "skip_type_writing"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/h;->e(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/h;)Lcom/nianticproject/ingress/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/h;->F()V

    .line 215
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 66
    const v0, 0x7f030026

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 69
    const v0, 0x7f080034

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    const v1, 0x7f080035

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nianticproject/ingress/n/h;->b:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f080017

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    .line 72
    const v1, 0x7f080018

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    .line 73
    const v1, 0x7f080039

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/h;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v3, p0, Lcom/nianticproject/ingress/n/h;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 81
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/h;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "skip_type_writing"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/h;->i()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1}, Lcom/nianticproject/ingress/ui/a/c;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    .line 88
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    new-array v3, v4, [Landroid/widget/TextView;

    aput-object v0, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nianticproject/ingress/ui/a/c;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 91
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_0
    new-instance v0, Lcom/nianticproject/ingress/n/i;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/n/i;-><init>(Lcom/nianticproject/ingress/n/h;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v2

    .line 98
    :cond_0
    iput-object v8, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    goto :goto_0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "NicknamePromptFragment"

    return-object v0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 185
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/h;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    iget-object v2, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/h;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/n/q;->b_(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/n/h;->onClick(Landroid/view/View;)V

    .line 202
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/nianticproject/ingress/n/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 163
    if-lt v0, v4, :cond_2

    if-gt v0, v6, :cond_2

    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    if-ge v0, v4, :cond_3

    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 172
    :cond_3
    if-le v0, v6, :cond_0

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->e:Landroid/widget/TextView;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->q()V

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/a/c;->a(Lcom/nianticproject/ingress/ui/a/b;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/h;->F()V

    goto :goto_0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/n/h;->f:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->b()V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->r()V

    .line 120
    return-void
.end method
