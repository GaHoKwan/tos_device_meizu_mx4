.class Landroid/preference/EditTextPreference$1;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/EditTextPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/EditTextPreference;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/preference/EditTextPreference;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Landroid/preference/EditTextPreference$1;->this$0:Landroid/preference/EditTextPreference;

    iput-object p2, p0, Landroid/preference/EditTextPreference$1;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 330
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 324
    iget-object v0, p0, Landroid/preference/EditTextPreference$1;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/preference/EditTextPreference$1;->val$okButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 326
    :cond_0
    return-void
.end method
